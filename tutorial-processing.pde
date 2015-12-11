
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
arduino.pinMode(4, Arduino.OUTPUT);
arduino.pinMode(3, Arduino.OUTPUT);
arduino.pinMode(2, Arduino.OUTPUT);
}

void draw() {
if (keyPressed == true) {
 
  if (key == 'k' || key == 'K') {
    arduino.digitalWrite (12, Arduino.HIGH);
  }
  if (key == 'p' || key == 'P') {
    arduino.digitalWrite (11, Arduino.HIGH);
  }
  if (key == 'q' || key == 'Q') {
    arduino.digitalWrite (10, Arduino.HIGH);
  }
  if (key == 'l' || key == 'L') {
    arduino.digitalWrite (9, Arduino.HIGH);
  }
  if (key == 'i' || key == 'I') {
    arduino.digitalWrite (8, Arduino.HIGH);
  }
  if (key == 'v' || key == 'V') {
    arduino.digitalWrite (7, Arduino.HIGH);
  }
  if (key == 'g' || key == 'G') {
    arduino.digitalWrite (6, Arduino.HIGH); 
  }
  if (key == 'm' || key == 'M') {
    arduino.digitalWrite (5, Arduino.HIGH);
  }
  if (key == 'o' || key =='O') {
    arduino.digitalWrite (4, Arduino.HIGH);
  }
  if (key == 'h' || key =='H') {
    arduino.digitalWrite (3, Arduino.HIGH);
  }
  if (key == 'f' || key =='F') {
    arduino.digitalWrite (2, Arduino.HIGH);
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
    arduino.digitalWrite (4, Arduino.LOW);
    arduino.digitalWrite (3, Arduino.LOW);
    arduino.digitalWrite (2, Arduino.LOW);
  }
}
