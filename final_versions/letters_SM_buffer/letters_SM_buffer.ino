

#include <Wire.h>

#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

float angles[3]; // yaw pitch roll
int classify = 0;
String ltr = "\0";
int edit = 0;

//char[32] lcd_buffer;
//char *lcd_screen;



/////////////////////
// Glove constants //
/////////////////////

// Set the FreeSixIMU object
FreeSixIMU sixDOF = FreeSixIMU();


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
    ltr = "22222222222222222222222222222";
    edit = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,20,0,5,0,5,0,5,12,19))
  {
    ltr = "33333333333333333333333333333";
    edit = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,18,0,4,15,25,15,25,15,25))
  {
    ltr = "1111111111111111111111111111";
    edit = 1;   
  }else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 15,25,0,7,0,7,0,7,0,7))
  {
    ltr = "4444444444444444444444444";
    edit = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,5,0,5,12,18,0,5)
)
  {
    ltr = "EXIT EDITTTTTTTTTTTTTTTTTTTTTTT";
    edit = 2;   
  }
  else
  {
   Serial.println("Edit CLassifier FAILED to match Gesture");
   ltr = "Failed to match letter";
   edit = 0;
  }
  //classify = 1;
  
}



void classifier()
{

   // A
  if(  check_range(0,0,0,0,0,0,0,0,0,0,1,1,0,0,10,19,15,25,15,25,15,25,13,25))
  {
    ltr = "A";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0,15,25,0,7,0,7,0,7,0,7))
  {
    ltr = "B";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0,11,18,15,18,13,18,13,18,7,13))
  {
    ltr = "C";
    classify = 1;   
  } else if (check_range(0,0,1,1,0,0,0,0,0,0,0,0,0,0, 7,18,0,5,10,15,10,16,7,15))
  {
    ltr = "D";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 20,25,16,25,16,25,16,25,16,25))
  {
    ltr = "E";
    classify = 1;   
  
  } else if (check_range(0,0,0,0,0,0,0,1,1,1,0,0,0,0, 11,22,13,17,0,6,0,6,0,6))
  {
    ltr = "F";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 4,10,6,10,15,25,15,25,15,25))
  {
    ltr = "G";
    classify = 1;   
  } else if (check_range(1,1,0,0,1,1,0,0,0,0,0,0,0,0, 10,18,0,5,0,5,10,20,10,20))
  {
    ltr = "H";
    classify = 1;   
  
  } else if (check_range(0,0,0,0,0,1,0,1,0,0,1,1,0,0, 16,22,13,25,13,25,13,25,0,5))
  {
    ltr = "I";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,1,1,1,1,0,0,0,0, 7,18,0,6,3,10,12,22,12,22))
  {
    ltr = "K";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 0,3,0,4,15,25,15,25,15,25))
  {
    ltr = "L";
    classify = 1;   
  
  } else if (check_range(0,0,0,0,0,1,0,1,0,0,0,0,1,1, 12,23,13,25,13,25,13,22,13,20))
  {
    ltr = "M";
    classify = 1;   
  } else if (check_range(1,1,0,0,0,1,0,0,0,0,0,0,0,0, 13,23,13,25,13,25,13,22,13,20))
  {
    ltr = "N";
    classify = 1;   
  } else if (check_range(0,0,1,1,0,1,0,0,0,0,0,0,0,0, 11,18,12,18,13,18,13,18,7,13))
  {
    ltr = "O";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 12,20,0,3,0,7,15,20,13,16))
  {
    ltr = "R";
    classify = 1;   
  } else if (check_range(0,0,0,0,1,1,0,0,0,0,0,0,0,0, 17,19,19,21,15,20,15,20,15,20))
  {
    ltr = "S";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,1,1,1,1,0,0,0,0, 12,23,13,25,13,25,13,22,13,20))
  {
    ltr = "T";
    classify = 1;   
  } else if (check_range(1,1,0,0,1,1,0,1,0,0,0,0,0,0, 11,18,0,3,0,3,14,22,10,16))
  {
    ltr = "U";
    classify = 1;   
  } else if (check_range(1,1,0,0,0,0,0,0,0,0,0,0,0,0, 11,18,0,5,0,5,14,22,10,16))
  {
    ltr = "V";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 11,20,0,5,0,5,0,5,12,19))
  {
    ltr = "W";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 11,15,12,15,16,20,17,22,15,19))
  {
    ltr = "X";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 0,9,17,20,17,20,17,20,0,5)
)
  {
    ltr = "Y";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,1,0,0,0,0,0,0,0,0, 15,17,0,3,18,20,18,21,17,18))
  {
    ltr = "Z";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,8,19,0,5,0,5,0,5))
  {
    ltr = "_";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,5,8,19,0,5,0,5))
  {
    ltr = "SPEEEEEEEEEEEEEEEEEEEECH";
    classify = 1;   
  } else if (check_range(0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,8,0,5,0,5,12,18,0,5))
  {
    ltr = "ENTER EDITTTTTTTTTTTTTTTTTTTTTTT";
    classify = 2; 
    edit = 0;
  }
  else
  {
   //Serial.println("\0");
   ltr = "Failed to match letter";
   classify = 0;
  }
  //classify = 1;
  
}

void setup()
{
  //Serial USB setup
  
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
    state = EDIT_WAIT;
  }

  else if(state == CLASSIFY && classify == 2 && !check_movement()){
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
      calibrate();    
      break;

    case CLASSIFY_WAIT:
      classify = 0;
      calibrate();
      break;
            
    case EDIT_CLASSIFY: 
      edit_classifier();
      Serial.println("EDIT_CLASSIFY ");
      Serial.print("wait:   ");
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
      Serial.print(data[6]);
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
      Serial.println();   
      calibrate();   
      break; 
    case CLASSIFY:
//     if(data[3] == 2){
//      classify = 2;
//      edit = 2;
//     }
//     else
//     {
      //classify = 1;
        //edit = 1;
//     }


      classifier();
      calibrate();
      break;

    case CLASSIFY_PRINT:

      Serial.print(ltr);

      break;

    case EDIT:
    Serial.println("EDIT ");
      edit_classifier();
      calibrate();
      break;
    case EDIT_MOVING:
    Serial.println("EDIT_MOVING ");
      calibrate();
      break;
  
    case EDIT_EXECUTE:
      Serial.println();
      Serial.print("EDIT_EXECUTE   ");
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
      Serial.print(data[6]);
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

      
      Serial.print(" letter: ");
      Serial.println(ltr);
      Serial.print(" asdasdasd");
      Serial.println();
      Serial.println();
      Serial.println();  
      edit = 3;  
      break;
    case EDIT_WAIT:
      edit = 0;
      calibrate();
      Serial.print("edit wait: ");
      Serial.println(state);
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
