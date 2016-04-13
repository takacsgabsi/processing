size(500,500);
background(#020934);
float x=0;
float y=1;
float meret=1;
noStroke();
  
int szamlalo=0;
  
while(szamlalo<1000){
  szamlalo=szamlalo+1;
  x=random(0,500);
  y=random(0,500);
  meret=random(1,25);
 
  fill(x,y,255);
  ellipse(x,y,meret,meret);
  
}