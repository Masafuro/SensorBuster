import processing.serial.*;
int lf =10;

Serial myPort;
String data;
int inByte;
String inBuffer;

void setPort(){
     for (int i = 0; i < Serial.list ().length; i++) {
        println (Serial.list ()[i]);
    }
   myPort = new Serial (this, Serial.list ()[3], 9600);
}

String getSerialData(){
    while (myPort.available() > 0) {
    inBuffer = myPort.readStringUntil(lf);
    println(inBuffer);
  }
  
  return inBuffer;
}