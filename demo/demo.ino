#include <english.h>
#include <TTS.h>

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

const int thumb = 4;
const int index = 3;
const int middle = 2;
const int ring = 1;
const int pinky = 0;

TTS text2speech;  // speech output is digital pin 10

  float thumbValue;
  float indexValue;
  float middleValue;
  float ringValue;
  float pinkyValue;

  float data[5];
  float prev_data[5];


void setup()
{
  // The speed is measured in bits per second, also known as
  // "baud rate". 9600 is a very commonly used baud rate,
  // and will transfer about 10 characters per second.
 
  Serial.begin(9600);
}


void update_data()
{
  prev_data[0] = data[0];
  prev_data[1] = data[1];
  prev_data[2] = data[2];
  prev_data[3] = data[3];
  prev_data[4] = data[4];
}


void calibrate()
{
  update_data();
 
  thumbValue = getVoltage(thumb);
  indexValue = getVoltage(index);
  middleValue = getVoltage(middle);
  ringValue = getVoltage(ring);
  pinkyValue = getVoltage(pinky);

  thumbValue = (int) ((thumbValue - 230) / 16 );
  indexValue = (int) ((indexValue - 220) / 11.5);
  middleValue = (int) (( middleValue  - 210) / 12.5);
  ringValue = (int) ((ringValue - 200) / 10);
  pinkyValue = (int) ((pinkyValue - 470) / 14.5);
 
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

  data[0] = thumbValue;
  data[1] = indexValue;
  data[2] =  middleValue;
  data[3] =  ringValue;
  data[4] =  pinkyValue;


}


int array_equal()
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


int check_movement()
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


void loop()
{

  calibrate();

  delay(750);

  calibrate();

  if( !check_movement())
  {
   return;
  }


  // H
  if(data[0] == 0
  && data[1] == 0
  && data[2] == 0
  && data[3] == 2
  && data[4] == 2)
  {
    Serial.print("h");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }

  // E
 
  else if(data[0] == 2
  && data[1] == 1
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    Serial.print("e");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }
 

  // L
  else if(data[0] == 0
  && data[1] == 0
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    Serial.print("l");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }



   // O
  else if(data[0] == 1
  && data[1] == 1
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    Serial.print("o");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }


  // Space
  else if(data[0] == 0
  && data[1] == 1
  && data[2] == 0
  && data[3] == 0
  && data[4] == 0)
  {
    Serial.print("_");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }


// W
  else if(data[0] == 1
  && data[1] == 0
  && data[2] == 0
  && data[3] == 0
  && data[4] == 2)
  {
    Serial.print("w");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }



 
// R
  else if(data[0] == 1
  && data[1] == 0
  && data[2] == 0
  && data[3] == 2
  && data[4] == 2)
  {
    Serial.print("r");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }


 
// D
  else if(data[0] == 1
  && data[1] == 0
  && data[2] == 2
  && data[3] == 2
  && data[4] == 2)
  {
    Serial.print("d");
    while(check_movement())
    {
      calibrate();
    }
    return;
   
  }

/*

 
  calibrate();


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
  
*/ 
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
