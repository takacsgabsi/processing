class Negyzet {

float x=0; 
float y=0;

void keletkezz(){
    x=random(0, 1200);
    y=random(0, 700);
  }
  
  void latszodj(){
    rect(x, y, 10, 10);
    fill(#FFFFFF);
  }
}

Negyzet[] negyzetek= new Negyzet[8400];

size(1200, 700);


void setup(){
  for (int i=0;i<3; i=i+1) {

  for (int i=0;i<3; i=i+3) {
    negyzetek[i]. keletkezz();
   
   
//    y+=10;}
    }
//      x+=10;
  }
}
  
}
  
void draw(){
 //minden harmadik négyzet legyen színes
 background(#FFFFFF);
float r=1;
float g=1;
float b=1;
    r=random(0,255);
    g=random(0,255);
    b=random(0,255);
    fill(r,g,b);