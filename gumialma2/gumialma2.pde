PImage alma;
color hatter;
void setup(){
size(500,500);

alma=loadImage("alma.png");
}
void draw(){
  hatter=color(50,150,250);
   background(255,255,255);
image(alma,mouseX,mouseY,width=mouseX,height=mouseY);
}