PImage alma;
color hatter;

void setup(){
size(500,500);

alma=loadImage("alma.png");
}
void draw(){
  hatter=color(mouseX, mouseY,250);
   background(hatter);
image(alma,mouseX,mouseY,100,100);
}