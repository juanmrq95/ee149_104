/*

Heart Rate SENSOR (Week 8) 

  Use the "serial monitor" window to read EMG sensor.
  
  The BrainBox is an easy-to-use EMG that outputs
  a voltage that's proportional to your muscle activity.
  
  This script will use the Arduino's serial port
  to send data back to your main computer. 
  
Hardware connections:

  Be careful when installing the EMG wires from the BrainBox into the Arduino.
  
  Connect the red wire from the BrainBox to 5 Volts (5V) on the Arduino.
  Connect the white wire from the BrainBox to ANALOG pin 0 on the Arduino.
  Connect the black wire to ground (GND) on the Arduino.

This sketch was written by Professor Grace O'Connell and modifyied from Ardu. Copyright, 2016.

*/

// We'll use analog input 0 to measure the temperature sensor's
// signal pin.

const int thumb = 2;
const int index = 1;
const int middle = 0;
const int ring = 6;
const int pinky = 7;


  float thumbValue;
  float indexValue;
  float middleValue;
  float ringValue;
  float pinkyValue;


void setup()
{ 
  // The speed is measured in bits per second, also known as
  // "baud rate". 9600 is a very commonly used baud rate,
  // and will transfer about 10 characters per second.
  
  Serial.begin(9600);
}


void calibrate()
{
  if (thumbValue >= 0 && thumbValue < 300)
  {
    thumbValue = 0;
  }
  else if (thumbValue >= 300 && thumbValue < 365)
  {
    thumbValue = 1;
  }
  else if (thumbValue >= 365)
  {
    thumbValue = 2;
  }
/* index finger */
  if (indexValue >= 0 && indexValue < 325)
  {
    indexValue = 0;
  }
  else if (indexValue >= 325 && indexValue < 400)
  {
    indexValue = 1;
  }
  else if (indexValue >= 400)
  {
    indexValue = 2;
  }
/*middle finger*/
  if (middleValue >= 0 && middleValue < 325)
  {
    middleValue = 0;
  }
  else if (middleValue >= 325 && middleValue < 415)
  {
    middleValue = 1;
  }
  else if (middleValue >= 415)
  {
    middleValue = 2;
  }
/*ring finger*/
    if (ringValue >= 0 && ringValue < 300)
  {
    ringValue = 0;
  }
  else if (ringValue >= 300 && ringValue < 340)
  {
    ringValue = 1;
  }
  else if (ringValue >= 340)
  {
    ringValue = 2;
  }
/*pinky finger*/
    if (pinkyValue >= 0 && pinkyValue < 525)
  {
    pinkyValue = 0;
  }
  else if (pinkyValue >= 525 && pinkyValue < 615)
  {
    pinkyValue = 1;
  }
  else if (pinkyValue >= 615)
  {
    pinkyValue = 2;
  }

}


void loop()
{

  thumbValue = getVoltage(thumb);
  indexValue = getVoltage(index);
  middleValue = getVoltage(middle);
  ringValue = getVoltage(ring);
  pinkyValue = getVoltage(pinky);

 // calibrate();

  
  // To send data from the Arduino to the serial monitor window,
  // we use the Serial.print() function. 

  Serial.print("thumb: ");
  Serial.print(thumbValue);
  Serial.print("   index: ");
  Serial.print(indexValue);
  Serial.print("   middle: ");
  Serial.print(middleValue);
  Serial.print("   ring: ");
  Serial.print(ringValue);
  Serial.print("   pinky: ");
  Serial.println(pinkyValue);

  // Note that the above statement uses "println", which will insert 
  // a "carriage return" character at the end of whatever it prints, 
  // moving down to the NEXT line.
   
  
  delay(100); // repeat once per second (change as you wish!)
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
