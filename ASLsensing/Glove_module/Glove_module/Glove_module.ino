#include <Wire.h>

#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

//////////////////////////////////////////////////////
// Accelerometer and Gyroscope Input Initialization //
//////////////////////////////////////////////////////
float angles[3]; // yaw pitch roll


// Set the FreeSixIMU object
FreeSixIMU sixDOF = FreeSixIMU();

///////////////////////////////
// Flex Input Initialization //
///////////////////////////////

const int thumb = 2;
const int indexes = 1;
const int middle = 0;
const int ring = 6;
const int pinky = 7;

float thumbValue;
float indexValue;
float middleValue;
float ringValue;
float pinkyValue;

////////////////////////////////
// Touch Input Initialization //
////////////////////////////////

const int ringSideTouch = 9;
const int middleTipTouch = 13;
const int middleBTouch = 10;
const int middleSideTouch = 11;
const int indexTipTouch = 12;
const int indexSideTouch = 17;
const int pinkySideTouch = 2;

int  indexSideValue;
int  indexTipValue;
int  middleSideValue;
int  middleBValue;
int  middleTipValue;
int  ringSideValue;
int  pinkySideValue;

////////////////////////////////////
//Feedback variable initialization//
////////////////////////////////////

float data[5];
float prev_data[5];

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
  prev_data[0] = data[0];
  prev_data[1] = data[1];
  prev_data[2] = data[2];
  prev_data[3] = data[3];
  prev_data[4] = data[4];
}

//////////////////////////////
//Glove Calibration Function//
//////////////////////////////

void calibrate(void)
{
  update_data();
 
  thumbValue = getVoltage(thumb);
  indexValue = getVoltage(indexes);
  middleValue = getVoltage(middle);
  ringValue = getVoltage(ring);
  pinkyValue = getVoltage(pinky);

  thumbValue = (int) ((thumbValue - 230) / 16 );
  indexValue = (int) ((indexValue - 220) / 11.5);
  middleValue = (int) (( middleValue  - 210) / 12.5);
  ringValue = (int) ((ringValue - 200) / 10);
  pinkyValue = (int) ((pinkyValue - 470) / 14.5);

  indexSideValue = digitalRead(indexSideTouch);
  indexTipValue = digitalRead(indexTipTouch);
  middleSideValue = digitalRead(middleSideTouch);
  middleBValue = digitalRead(middleBTouch);
  middleTipValue = digitalRead(middleTipTouch);
  ringSideValue = digitalRead(ringSideTouch);
  pinkySideValue = digitalRead(pinkySideTouch);

  sixDOF.getEuler(angles);
  
 /*
  if (thumbValue >= 0 && thumbValue < 8)
  {
    thumbValue = 0;
  }
  else if (thumbValue >= 8 && thumbValue < 13)
  {
    thumbValue = 1;
  }
  else if (thumbValue >= 13)
  {
    thumbValue = 2;
  }
//index finger
  if (indexValue >= 0 && indexValue < 10)
  {
    indexValue = 0;
  }
  else if (indexValue >= 10 && indexValue < 15)
  {
    indexValue = 1;
  }
  else if (indexValue >= 15)
  {
    indexValue = 2;
  }
//middle finger
  if (middleValue >= 0 && middleValue < 7)
  {
    middleValue = 0;
  }
  else if (middleValue >= 7 && middleValue < 10)
  {
    middleValue = 1;
  }
  else if (middleValue >= 10)
  {
    middleValue = 2;
  }
//ring finger
    if (ringValue >= 0 && ringValue < 10)
  {
    ringValue = 0;
  }
  else if (ringValue >= 10 && ringValue < 13)
  {
    ringValue = 1;
  }
  else if (ringValue >= 13)
  {
    ringValue = 2;
  }
//pinky finger
    if (pinkyValue >= 0 && pinkyValue < 7)
  {
    pinkyValue = 0;
  }
  else if (pinkyValue >= 7 && pinkyValue < 10)
  {
    pinkyValue = 1;
  }
  else if (pinkyValue >= 10)
  {
    pinkyValue = 2;
  }
*/
  data[0] = thumbValue;
  data[1] = indexValue;
  data[2] =  middleValue;
  data[3] =  ringValue;
  data[4] =  pinkyValue;


}


int array_equal(void)
{
  if(data[0] == prev_data[0]
  && data[1] == prev_data[1]
  && data[2] == prev_data[2]
  && data[3] == prev_data[3]
  && data[4] == prev_data[4])
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

void classifier(char *ltr)
{
  static int classify = 0; 
   // H
  if(data[0] == 0
  && data[1] == 0
  && data[2] == 0
  && data[3] == 2
  && data[4] == 2)
  {
    ltr = 'H';
 //   prev_ltr = "H";
    classify = 1;
    //return;
   
  }

  // E
 
  else if(data[0] == 2
  && data[1] == 2
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    ltr = 'E';
//    prev_ltr = "E";  
    classify = 1;
    //return;
   
  }
 

  // L
  else if(data[0] == 0
  && data[1] == 0
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    ltr = 'L';
    classify = 1;
    //return;
   
  }



   // O
  else if(data[0] == 1
  && data[1] == 1
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    ltr = 'O';
    classify = 1;
    //return;
   
  }


  // Space
  else if(data[0] == 0
  && data[1] == 1
  && data[2] == 0
  && data[3] == 0
  && data[4] == 0)
  {
    ltr = '_';
    classify = 1;
    //return;
   
  }


// W
  else if(data[0] == 1
  && data[1] == 0
  && data[2] == 0
  && data[3] == 0
  && data[4] == 2)
  {
    ltr = 'W';
    classify = 1;
    //return;
   
  }



 
// R
  else if(data[0] == 1
  && data[1] == 0
  && data[2] == 0
  && data[3] == 2
  && data[4] == 2)
  {
    ltr = 'R';
    classify = 1;
    //return;
   
  }


 
// D
  else if(data[0] == 1
  && data[1] == 0
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    ltr = 'D';

    classify = 1;
    //return;
   
  }
  else
  {
   ltr = '\0';
   classify = 1;
  }
  classify =1;
  
}

void setup()
{
  //Serial USB setup
   
  Serial.begin(115200);

  //GPIO pin initialization
  
  pinMode(ringSideTouch, INPUT);
  pinMode(middleTipTouch, INPUT);
  pinMode(middleBTouch, INPUT);
  pinMode(middleSideTouch, INPUT);
  pinMode(indexTipTouch, INPUT);
  pinMode(indexSideTouch, INPUT);
  pinMode(pinkySideTouch, INPUT);

  //I2C pins setup
  
  Wire.begin();
  
  //Accelerometer and Gyroscope Setup
  
  delay(5);
  sixDOF.init(); //begin the IMU
  delay(5); 

}



void loop()
{

  thumb_flex_voltage = getVoltage(thumb);
  index_flex_voltage = getVoltage(index);
  middle_flex_voltage = getVoltage(middle);
  ring_flex_voltage = getVoltage(ring);
  pinky_flex_voltage = getVoltage(pinky);

  thumb_value = (thumb_flex_voltage - thumbBias)/thumb_a;
  index_value = (index_flex_voltage - indexBias)/index_a;
  middle_value = (middle_flex_voltage - middleBias)/middle_a;
  ring_value = (ring_flex_voltage - ringBias)/ring_a;
  pinky_value = (pinky_flex_voltage - pinkyBias)/pinky_a;

  
  sixDOF.getAngles(angles);
  
  Serial.print("r_side ");
  Serial.print(digitalRead(ring_side));
  Serial.print("   m_tip: ");
  Serial.print(digitalRead(middle_tip));
  Serial.print("   m_b: ");
  Serial.print(digitalRead(middle_b));
  Serial.print("   m_side: ");
  Serial.print(digitalRead(middle_side));
  Serial.print("   i_tip: ");
  Serial.print(digitalRead(index_tip));
  Serial.print("   i_side: ");
  Serial.print(digitalRead(index_side));
  Serial.print("   p_side: ");
  Serial.print(digitalRead(pinky_side));

  Serial.print("thumb: ");
  Serial.print(thumb_value);
  Serial.print("   index: ");
  Serial.print(index_value);
  Serial.print("   middle: ");
  Serial.print(middle_value);
  Serial.print("   ring: ");
  Serial.print(ring_value);
  Serial.print("   pinky: ");
  Serial.print(pinky_value);

    Serial.print(" X: ");
  Serial.print(angles[0]);
  Serial.print("  Y: ");
  Serial.print(angles[1]);
  Serial.print("  Z: ");
  Serial.println(angles[2]);
  /*static gloveState state = INITIAL;
  static int classify = 0;
  static int edit = 0;
  static char ltr;



/*
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
  
  else if(state == CLASSIFY && classify==1 && check_movement()){
    state = CLASSIFY_PRINT;
  }

  
  else if(state == CLASSIFY && classify== 0 && check_movement()){
    state = CLASSIFY_MOVING;
  }

  else if(state == CLASSIFY && classify== 2 && check_movement()){
    state = EDIT;
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
    state = EDIT;
  }

  else if(state == EDIT && !check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == EDIT_MOVING && check_movement()){
    state = EDIT_CLASSIFY;
  }

  else if(state == CLASSIFY && edit == 1 && check_movement()){
    state = EDIT_EXECUTE;
  }
  
  else if(state == CLASSIFY && edit == 0 && check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == CLASSIFY && edit == 2 && check_movement()){
    state = CLASSIFY_MOVING;
  }
  

  else if(state == EDIT_MOVING && !check_movement()){
    state = EDIT_MOVING;
  }  

  else if(state == EDIT_EXECUTE){
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
    case CLASSIFY_MOVING:
    case CLASSIFY_WAIT:
           Serial.print(thumbValue);
  Serial.print("   index: ");
  Serial.print(indexValue);
  Serial.print("   middle: ");
  Serial.print(middleValue);
  Serial.print("   ring: ");
  Serial.print(ringValue);
  Serial.print("   pinky: ");
  Serial.println(pinkyValue);
  Serial.print("AccelX: ");
  Serial.print(angles[0]);
  Serial.print("   AccelY: ");
  Serial.print(angles[1]);
  Serial.print("   AccelZ: ");
  Serial.println(angles[2]);
   Serial.print("ring_side ");
  Serial.print(digitalRead(ringSideTouch));
  Serial.print("   middle_tip: ");
  Serial.print(digitalRead(middleTipTouch));
  Serial.print("   middle_b: ");
  Serial.print(digitalRead(middleBTouch));
  Serial.print("   middle_side: ");
  Serial.print(digitalRead(middleSideTouch));
  Serial.print("   index_tip: ");
  Serial.print(digitalRead(indexTipTouch));
  Serial.print("   index_side: ");
  Serial.print(digitalRead(indexSideTouch));
  Serial.print("   pinky_side: ");
  Serial.println(digitalRead(pinkySideTouch));
  
  Serial.println(state);

            calibrate();

            
            classify = 0;
            //Serial.println(state);
            break;
  
    case CLASSIFY:
     calibrate();
      
   // Serial.println(state);

   classifier(ltr);
   break;

  case CLASSIFY_PRINT:
  //Serial.println(state);
  Serial.print(ltr);
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
  */

  
 delay(150); // repeat once per second (change as you wish!)
}


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
