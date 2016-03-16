float kapcsolox=200;
float kapcsoloy=400;
float pirosx=300;
float pirosy=400;

float sugar=50;

boolean lampa_on=false;
void setup(){
  size(500,500);
}

void draw(){
  noStroke();
  fill(#333333);
  ellipse(kapcsolox, kapcsoloy, sugar,sugar);
  fill(#ff0000);
  ellipse(pirosx,pirosy,sugar,sugar);
  
  if (mousePressed){
    fill(#F9FA28);
    triangle(250,-130,-50,500,550,500);
    
    
  }
    
  if (lampa_on){
    stroke(30);
    triangle(250,-130,-50,500,550,500);
  }
}