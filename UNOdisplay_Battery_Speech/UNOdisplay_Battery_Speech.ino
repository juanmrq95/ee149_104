/* This code runs on Arduino UNO:
Recieves data through serial pins and then displays to the lcd screen" */

#include <Wire.h>
#include "rgb_lcd.h"

#include <SoftwareSerial.h>

rgb_lcd lcd;

const int colorR = 255;
const int colorG = 255;
const int colorB = 255;

#define rxPin   11  // Serial input (connects to Emic 2's SOUT pin)
#define txPin   10  // Serial output (connects to Emic 2's SIN pin)

SoftwareSerial lcdSerial =  SoftwareSerial(rxPin, txPin);


////// LCD functions

char ltr = '\0';
int edit = 0;
String lcd_buffer = "|";
int cursor_index = 0;

void add_letter()
{
  lcd_buffer = lcd_buffer.substring(0,cursor_index) + ltr + lcd_buffer.substring(cursor_index);
  cursor_index++;
}


void delete_letter()
{
  lcd_buffer = lcd_buffer.substring(0,cursor_index-1) + lcd_buffer.substring(cursor_index);
  cursor_index--;
  lcd.clear();
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
        lcd_buffer = lcd_buffer.substring(0, cursor_index) + word_swap + "|" + lcd_buffer.substring(cursor_index + 2);
        cursor_index++;
      }
    }
  else
    {     
      if(cursor_index != 0)
      {
        word_swap = lcd_buffer.substring(cursor_index - 1, cursor_index);
        lcd_buffer = lcd_buffer.substring(0, cursor_index - 1) + "|" + word_swap + lcd_buffer.substring(cursor_index + 1);
        cursor_index--;
      }
    } 
}

void clear_screen()
{
  lcd_buffer = "|";
  cursor_index = 0;
  lcd.clear();
}




void setup() {
  // Begin the Serial at 9600 Baud
  Serial.begin(9600);
  lcdSerial.begin(9600);
  lcd.begin(16, 2);
  
  lcd.setRGB(colorR, colorG, colorB);
    
  // Print a message to the LCD.
  //lcd.print("hello,world!");
  void display();

  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);

  lcd.print(lcd_buffer);

}



void loop() {
    while(ltr != '.'){
      if (lcdSerial.available() > 0) {
        // read the incoming byte:
        ltr = lcdSerial.read();
        Serial.print("I received: ");
        Serial.println(ltr);

        if(ltr == '1'){
          delete_letter();
        } else if (ltr == '2') {
          clear_screen();
        } else if (ltr == '3') {
          move_cursor(0);
        } else if (ltr == '4') {
          move_cursor(1);
        } else if (ltr == '!') {
          lcd_buffer.setCharAt(cursor_index,'!');
        } else if (ltr == '+') {
          lcd.setCursor(0, 1);
          lcd.print("......");
          delay(1000);
          lcd.clear();
        } else if (ltr == '?') {
          lcd_buffer.setCharAt(cursor_index,'|');               
        } else {
          add_letter();
        }

        lcd.setCursor(0, 0);
        delay(100);
        // print the number of seconds since reset:
        //lcd.print(millis()/1000);
        lcd.print(lcd_buffer);
       //delay(250);
      }
    }
}
