PImage alma;

void setup(){
size(500,500);

alma=loadImage("alma.png");
}
void draw(){
   background(255,255,255);
image(alma,mouseX,mouseY,mouseX,mouseY);
}