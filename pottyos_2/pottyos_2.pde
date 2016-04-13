size(1200,700);
background(#FFFFFF);
float x=0;
float y=1;
float meret=1;
float r=1;
float g=1;
float b=1;
noStroke();
  
int szamlalo=0;
  
while(szamlalo<5000){
  szamlalo=szamlalo+1;
  x=random(0,1200);
  y=random(0,700);
  meret=random(1,30);
 
  fill(r,g,b);
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
  
  ellipse(x,y,meret,meret);
  
}