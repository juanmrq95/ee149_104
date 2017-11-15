import os
import serial

word = ""
while(True): 
	s = serial.Serial(port='/dev/cu.usbmodem1411', baudrate=9600)
	letter = s.read()
	print("sensor: " + letter)
	word = word + letter
	if(letter == "."):
		print(word)
		os.system("say " + word)
		word = ""
		command = raw_input("Enter command: ")

