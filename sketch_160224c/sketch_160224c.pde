float meret = 50;
float x=30;
float y=60;

void setup (){
  size(400,400);
}
void draw(){
  fill(255,x,0);
  rect(mouseX,mouseY,meret,10);
  if(mousePressed){
    meret=random(0,100);
    x=random(0,255);
    y=random(0,255);
  }


  if(mousePressed){
      fill(y,x,40);
  ellipse(mouseX,mouseY,meret,meret);
    meret=random(0,100);
    x=random(0,255);
    y=random(0,255);
  }
}