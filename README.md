# Lighting-alphabets-board-tutorial

⋅⋅⋅This is a tutorial of our lighting alphabets board. You can control the light through the keyboard. The alphabet is crafted on the glass board. We display it in a more dynamic way. In addition, we combine the arduino technology with our traditional glass craft, make the letters on alphabet board react to the keyboard input and shine.

⋅⋅⋅Here is the process:

⋅⋅⋅1. make the prototype light board with arduino kit
⋅⋅⋅2. set the code part on arduino and processing programme
⋅⋅⋅3. test the prototype
⋅⋅⋅4. connect the lights and arduino kit to the display board and glass board



⋅⋅⋅PROCESSING code

import processing.serial.*;
import cc.arduino.*;
Serial myPort;
Arduino arduino;

void setup () {
 println(Arduino.list());
 arduino = new Arduino(this, Arduino.list() [2], 57600);
 arduino.pinMode(12, Arduino.OUTPUT);
 arduino.pinMode(11, Arduino.OUTPUT);
 arduino.pinMode(10, Arduino.OUTPUT);
 arduino.pinMode(9, Arduino.OUTPUT);
 arduino.pinMode(8, Arduino.OUTPUT);
 arduino.pinMode(7, Arduino.OUTPUT);
 arduino.pinMode(6, Arduino.OUTPUT);
 arduino.pinMode(5, Arduino.OUTPUT);
}

void draw() {
 if (keyPressed == true) {
  
   if (key == 'b' || key == 'B') {
     arduino.digitalWrite (12, Arduino.HIGH);
   }
   if (key == 'c' || key == 'C') {
     arduino.digitalWrite (11, Arduino.HIGH);
   }
   if (key == 'e' || key == 'E') {
     arduino.digitalWrite (10, Arduino.HIGH);
   }
   if (key == 'f' || key == 'F') {
     arduino.digitalWrite (9, Arduino.HIGH);
   }
   if (key == 'g' || key == 'G') {
     arduino.digitalWrite (8, Arduino.HIGH);
   }
   if (key == 'k' || key == 'K') {
     arduino.digitalWrite (7, Arduino.HIGH);
   }
   if (key == 'm' || key == 'M') {
     arduino.digitalWrite (6, Arduino.HIGH); 
   }
   if (key == 'o' || key == 'O') {
     arduino.digitalWrite (5, Arduino.HIGH);
   }
 
 }
 else {
     arduino.digitalWrite (13, Arduino.LOW);
     arduino.digitalWrite (12, Arduino.LOW);
     arduino.digitalWrite (11, Arduino.LOW);
     arduino.digitalWrite (10, Arduino.LOW);
     arduino.digitalWrite (9, Arduino.LOW);
     arduino.digitalWrite (8, Arduino.LOW);
     arduino.digitalWrite (7, Arduino.LOW);
     arduino.digitalWrite (6, Arduino.LOW);
     arduino.digitalWrite (5, Arduino.LOW);
 
   }
}

PROCESSING

