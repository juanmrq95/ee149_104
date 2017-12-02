/*
  
  Emic 2 Text-to-Speech Module: Basic Demonstration       
                                                         
  Author: Joe Grand [www.grandideastudio.com]             
  Contact: support@parallax.com                            
  
  Program Description:
  
  This program provides a simple demonstration of the Emic 2 Text-to-Speech
  Module. Please refer to the product manual for full details of system 
  functionality and capabilities.
  Revisions:
  
  1.0 (February 13, 2012): Initial release
  1.1 (April 29, 2014): Changed rxPin/txPin to use pins 10/11, respectively, for widest support across the Arduino family (http://arduino.cc/en/Reference/SoftwareSerial)
    
*/
//Sender Code
// include the SoftwareSerial library so we can use it to talk to the Emic 2 module
#include <SoftwareSerial.h>
#include <stdlib.h>
#include <string.h>

SoftwareSerial emicSerial(6, 5); // RX, TX

void setup()  // Set up code called once on start-up
{  
  // set the data rate for the SoftwareSerial port
  emicSerial.begin(9600);
  Serial.begin(9600);
}

void loop() {
  //Serial.print(4);
  int number = 1;
  emicSerial.write('h');
  delay(250);
  emicSerial.write('e');
  delay(250);
  emicSerial.write('l');
  delay(250);
  emicSerial.write('l');
  delay(250);
  emicSerial.write('o');
  delay(250);
  emicSerial.write('.');
  delay(250);

}

