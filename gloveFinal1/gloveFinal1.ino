#include <Wire.h>
#include <SoftwareSerial.h>
#include <stdlib.h>
#include <string.h>
#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

int angles[3]; // yaw pitch roll
float accel[3];
float alpha = 0.5;

int classify = 0;
char ltr = '\0';
int edit = 0;


/////////////////////
// Glove constants //
/////////////////////

// Set the FreeSixIMU object
FreeSixIMU sixDOF = FreeSixIMU();

//LCD and Speech 
int LCD_RX = 6;
int LCD_TX = 5;

int Speaker_Out = 1;
int Speaker_In = 0;


SoftwareSerial emicSerial(Speaker_Out, Speaker_In); 
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

int edit_mode = 0;
String edit_symbol = "!";

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
  EDIT_WAIT,
  CLASSIFY_I_J,
  CLASSIFY_Z_1,
  CLASSIFY_Z_2,
  CLASSIFY_Z_3
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
      if(!(lcd_buffer.length() == cursor_index + 1))
      {
        word_swap = lcd_buffer.substring(cursor_index + 1, cursor_index + 2);
        if (edit_mode)
        {
          lcd_buffer = lcd_buffer.substring(0, cursor_index) + word_swap + edit_symbol + lcd_buffer.substring(cursor_index + 2);  
        }
        else
        {
          lcd_buffer = lcd_buffer.substring(0, cursor_index) + word_swap + "|" + lcd_buffer.substring(cursor_index + 2); 
        }
        
        cursor_index++;
      }
    }
  else
    {     
      if(cursor_index != 0)
      {
        word_swap = lcd_buffer.substring(cursor_index - 1, cursor_index);
        if (edit_mode)
        {
          lcd_buffer = lcd_buffer.substring(0, cursor_index - 1) + edit_symbol + word_swap + lcd_buffer.substring(cursor_index + 1);  
        }
        else
        {
          lcd_buffer = lcd_buffer.substring(0, cursor_index - 1) + "|" + word_swap + lcd_buffer.substring(cursor_index + 1);  
        }
     
        cursor_index--;
      }
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
  //  emicSerial.print("N7"); // select voice
  emicSerial.print('S');  // Convert text to speech
  emicSerial.print(speech_string);  
  // Send the desired string to convert to speech
  emicSerial.print('\n');
  // Wait here until the Emic 2 responds with a ":" indicating it's ready to accept the next command
  while (emicSerial.read() != ':');   
  //delay(500);
}

void send_to_lcd()
{
    LCDSerial.write(ltr);
}


/////////////////////
//Feedback Function//
/////////////////////

void update_data(void)
{
  for(int i = 0; i < 15; i++)
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
  sixDOF.getRawValues(angles);

 accel[0] = (float)(angles[0]) / 245;
 accel[1] = (float)(angles[1]) / 245;
 accel[2] = (float)(angles[2]) / 245;
  
  accel[0] = (1 - alpha)*data[12] + alpha * accel[0];
  accel[1] = (1 - alpha)*data[13] + alpha * accel[1];
  accel[2] = (1 - alpha)*data[14] + alpha * accel[2];

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
  data[12] = accel[0];
  data[13] = accel[1];
  data[14] = accel[2];

  
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



bool check_range(int i1, int i2, int i3, int i4,int i5, int i6, int i7, int i8,int i9, int i10, int i11, int i12,
int i13, int i14, int i15, int i16,int i17, int i18, int i19, int i20,int i21, int i22, int i23, int i24, float i25,
float i26, float i27, float i28, float i29, float i30)
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


  if( 
     !(( (i25)  <= data[12] && data[12] <= i26)
  && ( (i27)  <= data[13] && data[13] <= i28)
  && ( (i29)  <= data[14] && data[14] <= i30)))
  {
    return_val = false;
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
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,5,0,5,12,18,0,5))
  {
    ltr = '?';
    edit = 2;  
    send_to_lcd(); 
    edit_mode = 0;
  }
  else
  {
//   Serial.println("Edit CLassifier FAILED to match Gesture");
   ltr = '-';
   edit = 0;
  }
  //classify = 1;
  
}



void classifier()
{

   // A
  if(  check_range(0,0,0,0,0,0,0,0,0,0,1,1,0,0,10,19,15,25,15,25,15,25,13,25))
  {
    ltr = 'A';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0,15,25,0,7,0,7,0,7,0,7))
  {
    ltr = 'B';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0,9,16,15,18,13,18,13,18,7,13))
  {
    ltr = 'C';
    classify = 1;   
  } else if (check_range(0,0,1,1,0,0,0,0,0,0,0,0,0,0, 7,18,0,7,10,15,10,16,7,15))
  {
    ltr = 'D';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 21,25,16,25,16,25,16,25,16,25))
  {
    ltr = 'E';
    classify = 1;   
  
  } else if (check_range(0,0,0,0,0,0,0,1,1,1,0,0,0,0, 11,18,15,20,0,7,0,7,0,7))
  {
    ltr = 'F';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 4,10,6,13,15,25,15,25,15,25, 0,0.20,0.9,1.2,(-0.20),(0.45)))
  {
    ltr = 'G';
    classify = 1;   
  } else if (check_range(1,1,0,0,1,1,0,0,0,0,0,0,0,0, 10,18,0,5,0,5,10,20,10,20, 0.20,0.30,0.90,1.10,(-0.30),(-0.20)))
  {
    ltr = 'H';
    classify = 1;   
  
  } else if (check_range(0,0,0,0,0,1,0,1,0,0,1,1,0,0, 16,22,13,25,13,25,13,25,0,5))
  {
    ltr = 'I';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,1,1,1,1,0,0,0,0, 7,18,0,6,3,10,12,22,12,22, 0.9,1.1,0.25,0.4,0.20,0.5))
  {
    ltr = 'K';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 0,6,0,4,15,25,15,25,15,25))
  {
    ltr = 'L';
    classify = 1;   
  
  } else if (check_range(0,0,0,0,0,1,0,1,0,0,0,0,1,1, 12,23,13,25,13,25,13,22,13,20))
  {
    ltr = 'M';
    classify = 1;   
  } else if (check_range(1,1,0,0,0,1,0,0,0,0,0,0,0,0, 13,23,13,25,13,25,13,22,13,20))
  {
    ltr = 'N';
    classify = 1;   
  } else if (check_range(0,0,1,1,0,1,0,0,0,0,0,0,0,0, 11,20,12,20,13,18,13,18,7,20))
  {
    ltr = 'O';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,1,1,1,1,0,0,0,0, 7,18,0,6,3,10,12,22,12,22, 0.1,0.3,0.4,0.5,0.8,0.95))
  {
    ltr = 'P';
    classify = 1;    
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 4,10,6,13,15,25,15,25,15,25, (-0.30),0.15,0.20,0.45,0.85,1))
  {
    ltr = 'Q';
    classify = 1;   
  }
  else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 12,20,0,3,0,7,15,20,13,16))
  {
    ltr = 'R';
    classify = 1;   
  } else if (check_range(0,0,0,0,1,1,0,0,0,0,0,0,0,0, 17,22,19,28,15,28,15,25,15,20))
  {
    ltr = 'S';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,1,1,1,1,0,0,0,0, 12,23,13,25,13,25,13,22,13,20))
  {
    ltr = 'T';
    classify = 1;   
  } else if (check_range(1,1,0,0,1,1,0,1,0,0,0,0,0,0, 11,18,0,3,0,3,14,22,10,16, 0.90,1.10,0.10,0.20,0.30,0.40))
  {
    ltr = 'U';
    classify = 1;   
  } else if (check_range(1,1,0,0,0,0,0,0,0,0,0,0,0,0, 11,18,0,5,0,5,14,22,10,16))
  {
    ltr = 'V';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,20,0,5,0,5,0,5,12,19))
  {
    ltr = 'W';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 11,20,12,20,16,22,17,22,15,22))
  {
    ltr = 'X';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 0,11,17,23,17,20,17,20,0,11))
  {
    ltr = 'Y';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 11,17,0,5,18,22,18,22,17,20))
  {
    ltr = 'Z';
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,8,19,0,5,0,5,0,5))
  {
    ltr = ' '; //// Spaceeeeeee
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,8,8,22,0,5,0,5))
  {
    ltr = '+'; ///// Speeeeeeeeech
    classify = 1;   
    speech_flag = 1;
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,8,0,8,12,20,0,8))
  {
    ltr = '!'; ///// Enter ediiiiiiit
    classify = 2; 
    edit = 0;
    edit_mode = 1;
    send_to_lcd();
  }
  else
  {
   //Serial.println("\0");
   ltr = '-';
   classify = 0;
  }
  //classify = 1;
  
}

int acceleration_checker()
{
  // Checks the acceleration values for J

  if( 
     ( 0.40 <= data[12] && data[12] <= 0.60)
  && ( (-0.25)  <= data[13] && data[13] <= 0.0)
  && ( (-1.05)  <= data[14] && data[14] <= -0.80))
  {
    return 1;
  }
  else
  {
    return 0;
  }

}

int horizontal_negative()
{
  if (data[13] < -0.45)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}
int horizontal_positive()
{
  if ((data[13] > 0.45) && (data[14] > 1.2))
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

void setup()
{
  //GPIO pin initialization
  pinMode(ring_side, INPUT);
  pinMode(middle_tip, INPUT);
  pinMode(middle_b, INPUT);
  pinMode(middle_side, INPUT);
  pinMode(index_tip, INPUT);
  pinMode(index_side, INPUT);
  pinMode(pinky_side, INPUT);
  pinMode(Speaker_Out, INPUT);
  pinMode(Speaker_In, OUTPUT);
  
  //Serial USB setup
  LCDSerial.begin(9600);
  emicSerial.begin(9600);
  //  Serial.begin(9600);

  // Speaker board set_up
  emicSerial.print('\n');             // Send a CR in case the system is already up
  while (emicSerial.read() != ':');   // When the Emic 2 has initialized and is ready, it will send a single ':' character, so wait here until we receive it
  delay(10);                          // Short delay
  emicSerial.flush();                 // Flush the receive buffer
  
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
    state = CLASSIFY;
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
//    Serial.println("");  
//    Serial.println("EDIT MODE ENTERED");  
//    Serial.println(" ");  
    state = EDIT_WAIT;
  }

  else if(state == CLASSIFY && classify == 2 && !check_movement()){
//    Serial.println("");  
//    Serial.println("EDIT MODE ENTERED");  
//    Serial.println(" ");  
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
  else if(state == CLASSIFY && ltr == 'I')         /// I/J State Machine 
  {
    state = CLASSIFY_I_J;
  }
  else if(state == CLASSIFY_I_J && !check_movement())
  {
    ltr = 'I';
    state = CLASSIFY_PRINT;
  }
  else if(state == CLASSIFY_I_J && !acceleration_checker())
  {
    state = CLASSIFY_I_J;
  }
  else if(state == CLASSIFY_I_J && acceleration_checker())
  {
    ltr = 'J';
    state = CLASSIFY_PRINT;
  }
  else if(state == CLASSIFY && ltr == 'Z')      /// Z State Machine
  {
    state = CLASSIFY_Z_1;
  }
  else if(state == CLASSIFY_Z_1 && !check_movement())
  {
    state = CLASSIFY_MOVING;
  }
  else if(state == CLASSIFY_Z_1 && horizontal_negative())
  {
    state = CLASSIFY_Z_2;
  }
  else if(state == CLASSIFY_Z_2 && horizontal_positive())
  {
    state = CLASSIFY_Z_3;
  }
  else if(state == CLASSIFY_Z_2 && !check_movement())
  {
    state = CLASSIFY_MOVING;
  }
  else if(state == CLASSIFY_Z_3 && horizontal_negative())
  {
    state = CLASSIFY_PRINT;
  }
  else if(state == CLASSIFY_Z_3 && !check_movement())
  {
    state = CLASSIFY_MOVING;
  }



  switch (state){
    case INITIAL:

      calibrate();
      break;


    case CLASSIFY_MOVING:
//      Serial.print("ring: ");
//      Serial.print(data[0]);
//      Serial.print("  m_tip: ");
//      Serial.print(data[1]);
//      Serial.print("  m_b: ");
//      Serial.print(data[2]);
//      Serial.print("  m_side: ");
//      Serial.print(data[3]);
//      Serial.print("  i_tip: ");
//      Serial.print(data[4]);
//      Serial.print("  i_side: ");
//      Serial.print(data[5]);
//      Serial.print("  p_side: ");
//      Serial.println(data[6]);
//      Serial.print("  thumb: ");
//      Serial.print(data[7]);
//      Serial.print("  index: ");
//      Serial.print(data[8]);
//      Serial.print("  midd: ");
//      Serial.print(data[9]);
//      Serial.print("  ring: ");
//      Serial.print(data[10]);
//      Serial.print("  pink: ");
//      Serial.println(data[11]);  
        

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
        send_to_lcd();
        //delay(250);
        speech();
        speech_flag = 0; 
      }
      else
      {
        add_letter();
        send_to_lcd();
      }
      
//      Serial.println(lcd_buffer);
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
//      Serial.println();
//      Serial.print("EDIT_EXECUTE   ");
//      Serial.print(ltr);
//      Serial.println();
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

    case CLASSIFY_I_J:
      calibrate();
      break;

    case CLASSIFY_Z_1:
      break;

    case CLASSIFY_Z_2:
      break;

    case CLASSIFY_Z_3:
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
