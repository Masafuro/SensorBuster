PFont font;

void initialize(){
    background(backgroundcolor);
    fill(textcolor);
    
    maketextbase();
    
    textFont(font, defaultfontsize);
}

void bar(int x, int y, int w, int h){
  rect( x, y-h,w,h );
}

void makefont(){
 
 font = createFont("SoukouMincho", 48, true);
 textFont(font, 48);

}

void maketextbase(){
    textAlign(LEFT);
  
    textFont(font, 45);
    text("超音波",60,100);
    textFont(font, 30);
    text("cm",300,100);
    
    textFont(font, 45);
    text("水量",60,170);
    textFont(font, 30);
    text("mm",300,170);
    
    
    textAlign(RIGHT);

}

float rounda(float x){
  
  x = x * 10;
  x = round(x);
  x = x / 10;
  return x;

}