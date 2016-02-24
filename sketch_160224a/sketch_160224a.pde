float meret = 50;


void setup (){
  size(400,400);
}
void draw(){
  fill(25,0,0);
  line(mouseX,mouseY,meret,meret);
  if(mousePressed){
    meret=random(0,100);
   
  }
}