#include <Wire.h>
#include <SoftwareSerial.h>
#include <stdlib.h>
#include <string.h>
#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

float angles[3]; // yaw pitch roll
int classify = 0;
char ltr = '\0';
int edit = 0;


/////////////////////
// Glove constants //
/////////////////////

// Set the FreeSixIMU object
FreeSixIMU sixDOF = FreeSixIMU();

//LCD and Speech 
int LCD_TX = 5;
int LCD_RX = 6;
int Speaker_In = 0;
int Speaker_Out = 1;

SoftwareSerial emicSerial(0, 1); 
SoftwareSerial LCDSerial(6,5);

// Sensor Data
int ring_side = 8;
int middle_tip = 13;
int middle_b = 9;
int middle_side = 10;
int index_tip = 11;
int index_side = 17;
int pinky_side = 12;
const int thumb = A2;
const int index = A1;
const int middle = A0;
const int ring = A6;
const int pinky = A7;


int thumb_value = 0;
int index_value = 0;
int middle_value = 0;
int ring_value = 0;
int pinky_value = 0;


const int thumbBias = 260;
const int thumb_a = 8;

const int indexBias = 200;
const int index_a = 8;

const int middleBias = 200;
const int middle_a = 10.5;

const int ringBias = 200;
const int ring_a = 11.5;

const int pinkyBias = 410;
const int pinky_a = 10;

String lcd_buffer = "|";
int cursor_index = 0;

int speech_flag = 0;


////////////////////////////////////
//Feedback variable initialization//
////////////////////////////////////

float data[12];
float prev_data[12];

//////////////////////////////
//Glove State Initialization//
//////////////////////////////
 
typedef enum{
  INITIAL,
  CLASSIFY_MOVING, 
  CLASSIFY,
  CLASSIFY_PRINT,
  CLASSIFY_WAIT,
  EDIT,  
  EDIT_MOVING,
  EDIT_CLASSIFY,
  EDIT_EXECUTE,
  EDIT_WAIT
  
} gloveState;



// LCD

void add_letter()
{
  lcd_buffer = lcd_buffer.substring(0,cursor_index) + ltr + lcd_buffer.substring(cursor_index);
  cursor_index++;
}

void delete_letter()
{
  lcd_buffer = lcd_buffer.substring(0,cursor_index-1) + lcd_buffer.substring(cursor_index);
  cursor_index--;
}


void move_cursor(int direction)
{
  //Direction 0 = left, Direction 1 = right

  String word_swap;
  if (direction)
    {
      word_swap = lcd_buffer.substring(cursor_index + 1, cursor_index + 2);
      lcd_buffer = lcd_buffer.substring(0, cursor_index) + word_swap + "|" + lcd_buffer.substring(cursor_index + 2);
      cursor_index++;
    }
  else
    {     
      word_swap = lcd_buffer.substring(cursor_index - 1, cursor_index);
      lcd_buffer = lcd_buffer.substring(0, cursor_index - 1) + "|" + word_swap + lcd_buffer.substring(cursor_index + 1);
      cursor_index--;
    } 
}

void clear_screen()
{
  lcd_buffer = "|";
  cursor_index = 0;
}

void speech()
{
  String speech_string = lcd_buffer.substring(0,cursor_index) + lcd_buffer.substring(cursor_index + 1);
  emicSerial.write(speech_string.c_str());  
}

void send_to_lcd()
{
    LCDSerial.write(ltr);
}

void send_raw_data_to_lcd()
{
//  for (int i = 7; i < 12; i++)
//  {
//    LCDSerial.write((int)data[i]); 
//    delay(250); 
//  }
    LCDSerial.write((int)data[7]);    
    LCDSerial.write((int)data[8]);
    delay(250); 

}

/////////////////////
//Feedback Function//
/////////////////////

void update_data(void)
{
  for(int i = 0; i < 12; i++)
  {
    prev_data[i] = data[i];
  }
}

////////////////////////////////////
//Flex sensor Calibration Function//
////////////////////////////////////

float getVoltage(int pin)
{
  // This function has one input parameter, the analog pin number
  // to read. You might notice that this function does not have
  // "void" in front of it; this is because it returns a floating-
  // point value, which is the true voltage on that pin (0 to 5V).

  // Here's the return statement for this function. We're doing
  // all the math we need to do within this statement:
  return (analogRead(pin));
 
}

void calibrate(void)
{
  update_data();

  thumb_value = (getVoltage(thumb) - thumbBias)/thumb_a;
  index_value = (getVoltage(index) - indexBias)/index_a;
  middle_value = (getVoltage(middle) - middleBias)/middle_a;
  ring_value = (getVoltage(ring) - ringBias)/ring_a;
  pinky_value = (getVoltage(pinky) - pinkyBias)/pinky_a;

  
/* *Note* getAngles function should not be in calibration but in classify state since state transition depends only on flex movement */
  sixDOF.getAngles(angles);


// Feedback array *Note* Not sure if this should have its own function; might be helpful
  data[0] = digitalRead(ring_side);
  data[1] = digitalRead(middle_tip);
  data[2] = digitalRead(middle_b);
  data[3] = digitalRead(middle_side);
  data[4] = digitalRead(index_tip);
  data[5] = digitalRead(index_side);
  data[6] = digitalRead(pinky_side);
  data[7] = thumb_value;
  data[8] = index_value;
  data[9] = middle_value;
  data[10] = ring_value;
  data[11] = pinky_value;
}



int array_equal(void)
{
  if((data[0] == prev_data[0])
  && (data[1] == prev_data[1])
  && (data[2] == prev_data[2])
  && (data[3] == prev_data[3])
  && (data[4] == prev_data[4])
  && (data[5] == prev_data[5])
  && (data[6] == prev_data[6])
  && (data[7] >= prev_data[7] - 2 && data[7] <= prev_data[7] + 2)
  && (data[8] >= prev_data[8] - 2 && data[8] <= prev_data[8] + 2)
  && (data[9] >= prev_data[9] - 2 && data[9] <= prev_data[9] + 2) 
  && (data[10] >= prev_data[10] - 2 && data[10] <= prev_data[10] + 2)
  && (data[11] >= prev_data[11] - 2 && data[11] <= prev_data[11] + 2))
  {
    return 1;
  }
  else
  {
    return 0;
  }
}


int check_movement(void)
{
  if (array_equal() == 1)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

bool check_range(int i1, int i2, int i3, int i4,int i5, int i6, int i7, int i8,int i9, int i10, int i11, int i12,
int i13, int i14, int i15, int i16,int i17, int i18, int i19, int i20,int i21, int i22, int i23, int i24)
{
int bounds[24] = { i1,  i2,  i3,  i4, i5,  i6,  i7,  i8, i9,  i10,  i11,  i12,
 i13,  i14,  i15,  i16, i17, i18, i19, i20, i21,  i22,  i23,  i24};
  bool return_val = true;
  int bounds_i = 0;
  for(int i = 0; i < 12; i++)
  {
    if(!(bounds[bounds_i] <= data[i] && data[i] <= bounds[bounds_i+1]))
    {
      return_val = false;
    }
    bounds_i += 2;
  }
  return return_val;
}



void edit_classifier()
{
if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,18,0,3,0,3,14,19,12,16))
  {
    ltr = '2';
    edit = 1;   
    clear_screen();
    //move_cursor(0)
    //move_cursor(1)
    //delete_letter()    
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,20,0,5,0,5,0,5,12,19))
  {
    ltr = '3';
    edit = 1;
    //move_cursor(0);
    //clear_screen()
    move_cursor(0);
    //move_cursor(1)
    //delete_letter()
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,18,0,4,15,25,15,25,15,25))
  {
    ltr = '1';
    edit = 1;   
    //move_cursor(1);
    //clear_screen()
    //move_cursor(0)
    //move_cursor(1)
    delete_letter();
  }else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 15,25,0,7,0,7,0,7,0,7))
  {
    ltr = '4';
    edit = 1;   
    //move_cursor(1);
    //clear_screen()
    //move_cursor(0)
    move_cursor(1);
    //delete_letter()    
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,8,19,0,5,0,5,0,5)) //check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,5,0,5,12,18,0,5)
  {
    ltr = 'X';
    edit = 2;   
  }
  else
  {
   Serial.println("Edit CLassifier FAILED to match Gesture");
   ltr = '!';
   edit = 0;
  }
  //classify = 1;
  
}



void classifier()
{

  
}

void setup()
{
  //Serial USB setup
  LCDSerial.begin(9600);
  emicSerial.begin(9600);
  Serial.begin(9600);

  //GPIO pin initialization
  pinMode(ring_side, INPUT);
  pinMode(middle_tip, INPUT);
  pinMode(middle_b, INPUT);
  pinMode(middle_side, INPUT);
  pinMode(index_tip, INPUT);
  pinMode(index_side, INPUT);
  pinMode(pinky_side, INPUT);
  //I2C pins setup
  
  Wire.begin();
  
  //Accelerometer and Gyroscope Setup
  
  delay(5);
  sixDOF.init(); //begin the IMU
  delay(5); 

}

void loop()
{

  //Code to check if check movement function and feedback works
  
  static gloveState state = INITIAL;
  //static int edit = 0;

 if(state == INITIAL && check_movement()){
    state = INITIAL;
  }
   
 if(state == INITIAL && !check_movement()){
    state = CLASSIFY_MOVING;
  }

  else if(state == CLASSIFY_MOVING && check_movement()){
    state = CLASSIFY_MOVING;
  }
  
  else if(state == CLASSIFY_MOVING && !check_movement()){
    state = CLASSIFY_MOVING;
  }
  
  else if(state == CLASSIFY && classify == 1 && check_movement()){
    state = CLASSIFY_PRINT;
  }
  
  else if(state == CLASSIFY && classify == 0 && check_movement()){
    state = CLASSIFY_MOVING;
  }
  
  else if(state == CLASSIFY && classify == 1 && !check_movement()){
    state = CLASSIFY_PRINT;
  }
  
  else if(state == CLASSIFY && classify == 0 && !check_movement()){
    state = CLASSIFY_MOVING;
  }

  else if(state == CLASSIFY && classify == 2 && check_movement()){
    Serial.println("");  
    Serial.println("EDIT MODE ENTERED");  
    Serial.println(" ");  
    state = EDIT_WAIT;
  }

  else if(state == CLASSIFY && classify == 2 && !check_movement()){
    Serial.println("");  
    Serial.println("EDIT MODE ENTERED");  
    Serial.println(" ");  
    state = EDIT_WAIT;
  }
  
  else if(state == CLASSIFY_PRINT){
    state = CLASSIFY_WAIT;
  }
  
  else if(state == CLASSIFY_WAIT && check_movement()){
    state = CLASSIFY_WAIT;
  }
  
  else if(state == CLASSIFY_WAIT && !check_movement()){
    state = CLASSIFY_MOVING;
  }

  else if(state == EDIT && check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == EDIT && !check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == EDIT_MOVING && check_movement()){
    state = EDIT_CLASSIFY;
  }

  else if(state == EDIT_CLASSIFY && edit == 1 ){
    state = EDIT_EXECUTE;
  }
  
  else if(state == EDIT_CLASSIFY && edit == 0 && check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == EDIT_CLASSIFY && edit == 2){
    classify = 0;
    edit = 0;
    state = CLASSIFY_WAIT;
  }
  
  else if(state == EDIT_MOVING && !check_movement()){
    state = EDIT_MOVING;
  }  

  else if(state == EDIT_EXECUTE && edit == 3){
    state = EDIT_WAIT;
  }  

  else if(state == EDIT_WAIT && check_movement()){
    state = EDIT_WAIT;
  }

  else if(state == EDIT_WAIT && !check_movement()){
    state = EDIT_MOVING;
  }
  
  switch (state){
    case INITIAL:

      calibrate();
      break;


    case CLASSIFY_MOVING:
      Serial.print("ring: ");
      Serial.print(data[0]);
      Serial.print("  m_tip: ");
      Serial.print(data[1]);
      Serial.print("  m_b: ");
      Serial.print(data[2]);
      Serial.print("  m_side: ");
      Serial.print(data[3]);
      Serial.print("  i_tip: ");
      Serial.print(data[4]);
      Serial.print("  i_side: ");
      Serial.print(data[5]);
      Serial.print("  p_side: ");
      Serial.println(data[6]);
      Serial.print("  thumb: ");
      Serial.print(data[7]);
      Serial.print("  index: ");
      Serial.print(data[8]);
      Serial.print("  midd: ");
      Serial.print(data[9]);
      Serial.print("  ring: ");
      Serial.print(data[10]);
      Serial.print("  pink: ");
      Serial.println(data[11]);  

      send_raw_data_to_lcd();
        

      calibrate();    
      break;

    case CLASSIFY_WAIT:
      classify = 0;
      calibrate();
      break;
            
    case EDIT_CLASSIFY: 
      edit_classifier();
      //Serial.println("EDIT_CLASSIFY ");
      calibrate();   
      break; 
    case CLASSIFY:
      classifier();
      calibrate();
      break;

    case CLASSIFY_PRINT:
      if (speech_flag == 1)
      {
        speech();
        speech_flag = 0; 
      }
      else
      {
        add_letter();
        send_to_lcd();
      }
      
      Serial.println(lcd_buffer);
      // Sends the string buffer to the lcd to print
      break;

    case EDIT:
    //Serial.println("EDIT ");
      edit_classifier();
      calibrate();
      break;
    case EDIT_MOVING:
    //Serial.println("EDIT_MOVING ");
      calibrate();
      break;
  
    case EDIT_EXECUTE:
      Serial.println();
      Serial.print("EDIT_EXECUTE   ");
      Serial.print(ltr);
      Serial.println();
      send_to_lcd();
      
      edit = 3;  
      break;
    case EDIT_WAIT:
      edit = 0;
      calibrate();
      //Serial.println(" ");
      //Serial.print("edit wait: ");
      //Serial.println(" ");
      break;

    default:
      calibrate();
      break;
  }
  // To send data from the Arduino to the serial monitor window,
  // we use the Serial.print() function.


  // Note that the above statement uses "println", which will insert
  // a "carriage return" character at the end of whatever it prints,
  // moving down to the NEXT line.


  
  delay(250); // repeat once per second (change as you wish!)
}
