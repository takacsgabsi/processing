PImage alma;
color hatter;

float x;
float y;
float sebx=1;
float seby=-0.5;
void setup(){
size(500,500);

alma=loadImage("alma.png");
x=0;
y=250;


}
void draw(){
  hatter=color(mouseX, mouseY,250);
   background(hatter);
  image(alma,x,y,100,100);
  
 x=x+sebx;
 y=y+seby;


if (x>400){
  sebx=-1;
  seby=-1;
 }
 if(y>400){
   sebx=2;
   seby=-2;
 }
 if (y<20){
   sebx=-4;
   seby=4;
 }
 if (x<20){
   sebx=3;
   seby=3;
 }

}