size(500,500);
int x=0;

noFill();
while(x<500){
  ellipse(250,250,1,1);
  stroke(x,36,x/2);
  ellipse(250,250,x,x);

  
  x=x+20;
}