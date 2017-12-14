import os
import serial

word = ""
while(True): 
	s = serial.Serial(port='/dev/cu.usbmodem1411', baudrate=9600)
	letter = s.read()
	##print(letter)
	word = word + letter
	print(word)
	if(letter == "_"):
	##for i in range(0,12):
		print(word)
		os.system("say " + word)
		word = ""
		command = raw_input("Enter command: ")

