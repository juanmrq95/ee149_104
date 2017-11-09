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

const int thumb_flex = 0;
const int index_flex = 1;
const int middle_flex = 2;
const int ring_flex = 3;
const int pinky_flex = 4;

const int thumbBias = 480;
const int thumb_a = 40;

const int indexBias = 480;
const int index_a = 40;

const int middleBias = 480;
const int middle_a = 40;

//int val = 0;

int inPin = 8;     // pushbutton connected to digital pin 7

void setup()
{  
  // The speed is measured in bits per second, also known as
  // "baud rate". 9600 is a very commonly used baud rate,
  // and will transfer about 10 characters per second.
  
  Serial.begin(9600);
  pinMode(inPin, INPUT);
}


void loop()
{
  //val = digitalRead(inPin);     // read the input pin

  float thumb_flex_voltage;
  float index_flex_voltage;
  float middle_flex_voltage;
  float ring_flex_voltage;
  float pinky_flex_voltage;

  int thumb_value = 0;
  int index_value = 0;
  int middle_value = 0;
  int mid_touch = 0;

  thumb_flex_voltage = getVoltage(thumb_flex);
  index_flex_voltage = getVoltage(index_flex);
  middle_flex_voltage = getVoltage(middle_flex);
  mid_touch = getVoltage(5);
  if(mid_touch > 500){
    mid_touch = 1;
  } else {
    mid_touch = 0;
  }

  thumb_value = (thumb_flex_voltage - thumbBias)/thumb_a;
  index_value = (index_flex_voltage - indexBias)/index_a;
  middle_value = (middle_flex_voltage - middleBias)/middle_a;


  // To send data from the Arduino to the serial monitor window,
  // we use the Serial.print() function. 

  //Serial.println(thumb_flex_voltage);
  Serial.print("thumb: ");
  Serial.print(thumb_value);
  Serial.print("    index: ");
  Serial.print(index_value);
  Serial.print("    midlle: ");
  Serial.print(middle_value);

  Serial.print("    mid_touch: ");
  Serial.println(mid_touch);

  /// Classify
  if(middle_value == 0){
    if(index_value == 0-1) {
      if(thumb_value == 0){
        Serial.println("invalid");
      } else if (thumb_value >= 1){
        Serial.println("BBBBBBBB");
      }
    }
  } else if(middle_value == 1){
      if(index_value == 0-1){
        if(thumb_value == 0){
          if(mid_touch == 1){
            Serial.println("DDDDDD");
          }
        }
      } else if(index_value == 2-1) {
        if(thumb_value == 0){
          Serial.println("invalid");
      } else if (thumb_value >= 1){
          Serial.println("CCCCC");
      }
    }
  } else if(middle_value >= 2){
      if(index_value == 3-1) {
        if(thumb_value == 0){
          Serial.println("AAAA");
      } else if (thumb_value >= 1){
          Serial.println("invalid");
      }
    }
  }

  // Note that the above statement uses "println", which will insert 
  // a "carriage return" character at the end of whatever it prints, 
  // moving down to the NEXT line.
   
  
  delay(100); // repeat once per second (change as you wish!)
}


float getVoltage(int pin)
{
  // Here's the return statement for this function. We're doing
  // all the math we need to do within this statement:
  return (analogRead(pin));
}
