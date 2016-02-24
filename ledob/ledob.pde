PImage alma;
color hatter;

float x;
void setup(){
size(500,500);

alma=loadImage("alma.png");
x=0;


}
void draw(){
  hatter=color(mouseX, mouseY,250);
   background(hatter);
image(alma,x,x,100,100);
x=x+50;
}