 #include <Wire.h>

#include <FreeSixIMU.h>
#include <FIMU_ADXL345.h>
#include <FIMU_ITG3200.h>

float angles[3]; // yaw pitch roll

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

void setup()
{
  pinMode(ring_side, INPUT);
  pinMode(middle_tip, INPUT);
  pinMode(middle_b, INPUT);
  pinMode(middle_side, INPUT);
  pinMode(index_tip, INPUT);
  pinMode(index_side, INPUT);
  pinMode(pinky_side, INPUT);
  Serial.begin(9600);

  Wire.begin();

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
  Serial.println(pinky_value);

    Serial.print(" X: ");
  Serial.print(angles[0]);
  Serial.print("  Y: ");
  Serial.print(angles[1]);
  Serial.print("  Z: ");
  Serial.println(angles[2]);

 
delay(100);
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

