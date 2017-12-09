/* Code functional description goes here
 *  
 *  
 *  
 */



#include <Wire.h>

#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

float angles[3]; // yaw pitch roll

////////////////////////////
// Glove global constants //
////////////////////////////

int ms = 250; //250 ms: current delay

// Set the FreeSixIMU object
FreeSixIMU sixDOF = FreeSixIMU();


int ring_side = 8;
int middle_tip = 13;
int middle_b = 9;
int middle_side = 10;
int index_tip = 11;
int index_side = 17;
int pinky_side = 12;


const int thumb = 2;
const int index = 1;
const int middle = 0;
const int ring = 6;
const int pinky = 7;


int thumb_value = 0;
int index_value = 0;
int middle_value = 0;
int ring_value = 0;
int pinky_value = 0;

float thumb_flex_voltage;
float index_flex_voltage;
float middle_flex_voltage;
float ring_flex_voltage;
float pinky_flex_voltage;

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

////////////////////////////////////
//Flex sensor Calibration Function//
////////////////////////////////////

void calibrate(void)
{
  update_data();

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

  
/* *Note* getAngles function should not be in calibration but in classify state since state transition depends only on flex movement */
  sixDOF.getAngles(angles);


/* *Note* the following flex sensor custom range code were used for testing purposes. 
    Stuff to be done here : 1) Keep using the custom range code for flex values by fine tuning the range
                       (or) 2) Use a moving average or low pass filter for the flex values 
                       (or) 3) Both if it provides with stable flex values
*/

//Thumb finger 
   if (thumb_value >= 0 && thumb_value < 7)
  {
    thumb_value = 0;
  }
  else if (thumb_value >= 7 && thumb_value < 15)
  {
    thumb_value = 1;
  }
  else if (thumb_value >= 15)
  {
    thumb_value = 2;
  }
//index finger
  if (index_value >= 0 && index_value < 7)
  {
    index_value = 0;
  }
  else if (index_value >= 7 && index_value < 15)
  {
    index_value = 1;
  }
  else if (index_value >= 15)
  {
    index_value = 2;
  }
//middle finger
  if (middle_value >= 0 && middle_value < 7)
  {
    middle_value = 0;
  }
  else if (middle_value >= 7 && middle_value < 15)
  {
    middle_value = 1;
  }
  else if (middle_value >= 15)
  {
    middle_value = 2;
  }
//ring finger
    if (ring_value >= 0 && ring_value < 7)
  {
    ring_value = 0;
  }
  else if (ring_value >= 7 && ring_value < 15)
  {
    ring_value = 1;
  }
  else if (ring_value >= 15)
  {
    ring_value = 2;
  }
//pinky finger
    if (pinky_value >= 0 && pinky_value < 7)
  {
    pinky_value = 0;
  }
  else if (pinky_value >= 7 && pinky_value < 15)
  {
    pinky_value = 1;
  }
  else if (pinky_value >= 15)
  {
    pinky_value = 2;
  }

/* Custom range code ends here */

// Feedback array *Note* Not sure if this should have its own function; might be helpful
  data[0] = thumb_value;
  data[1] = index_value;
  data[2] = middle_value;
  data[3] = ring_value;
  data[4] = pinky_value;


}
////////////////////////
// Feedback functions //
////////////////////////

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

/////////////////////////////////////////////////////////////////
// ASL Classifier function & possibly Edit Classifier function //
/////////////////////////////////////////////////////////////////


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

/*Edit function classifer goes here

*/

///////////////////////
// ADC read function //
///////////////////////

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

////////////////
// Setup Code //
////////////////

void setup()
{
  //Serial USB setup
   
  Serial.begin(500000);

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

///////////////
// Loop code //
///////////////

void loop()
{

  //Code to check if check movement function and feedback works
  /*
  static int a = 0;
    
  calibrate();
  
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

  a = check_movement();

  if (a==0){
    Serial.println("YES");
  }

  */

  
  static gloveState state = INITIAL;
  static int classify = 0;
  static int edit = 0;
  static char ltr;

  


  //State Machine transitions
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

  else if(state == CLASSIFY && classify == 2 && check_movement()){
    state = EDIT;
  }

   else if(state == CLASSIFY && classify == 2 && !check_movement()){
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
    state = EDIT_MOVING;
  }

  else if(state == EDIT && !check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == EDIT_MOVING && check_movement()){
    state = EDIT_CLASSIFY;
  }

  else if(state == EDIT_CLASSIFY && edit == 1 && check_movement()){
    state = EDIT_EXECUTE;
  }
  
  else if(state == EDIT_CLASSIFY && edit == 0 && check_movement()){
    state = EDIT_MOVING;
  }

  else if(state == EDIT_CLASSIFY && edit == 2 && check_movement()){
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

  //State functions
  switch (state){
    case INITIAL:
    case CLASSIFY_MOVING:
    case CLASSIFY_WAIT:

            calibrate();
            classify = 0;
            Serial.println(state);
            break;
            
    
    case CLASSIFY:
     calibrate();
     
     //classifier function goes here: below code must be replaced with asl classifier function
     if(data[3] == 2){
      classify = 2;
      edit = 2;
     }
     else
     {
      classify = 1;
      edit = 1;
     }

     //classifier function ends here
     
   Serial.println(state);

   classifier(ltr);
   break;

   case EDIT_CLASSIFY:  
   calibrate();
     
     //classifier function goes here: below code must be replaced with edit classifier function
     if(data[3] == 2){
      edit = 2;
     }
     else
     {
      edit = 1;
     }

     //classifier function ends here
     
   Serial.println(state);

   classifier(ltr);
   break;

  case CLASSIFY_PRINT:
  Serial.println(state);
  Serial.print(ltr);
  break;

  case EDIT:
  case EDIT_MOVING:
  
  case EDIT_EXECUTE:
  case EDIT_WAIT:
  calibrate();
  Serial.println(state);
  break;
  

  
  default:
    
    calibrate();
     break;
  }
  
    
 delay(ms); // delays the loop based on the value of ms
}


