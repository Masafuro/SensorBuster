
color backgroundcolor = #11002e, textcolor = #ffffff;
int defaultfontsize = 48;

String Data[];

void setup() { 
  size(1024, 768);
  
  setPort();
  makefont();
  
  initialize();
}

void draw() {
  
  initialize();
  Data = splitTokens(getSerialData(),",");
  
  supersonic(0);
  rainfall(1);

}

void mousePressed(){ 
  text( mouseX + " " + mouseY, 900,600);
}

void supersonic(int x){
  
  String[] m = match(Data[x], "out");
  if (m != null){

  } else {
    text(Data[x],290,100);
  }
  
}

void rainfall(int x){
  
  if ( float(Data[x]) > 600 ) Data[x] ="低";
  else if ( float(Data[x]) < 300) Data[x] = "高";
  else{
  Data[x] = str( rounda(4 - map( float(Data[x]) ,300,600,0,4) ) );
  }
  text(Data[x],290,170);

}