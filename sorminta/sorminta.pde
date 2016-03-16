size(500,500);
int x=0;


while (x<500){
  ellipse(x,100,50,50);
  ellipse(100,x,50,50);
  ellipse(x,x,70,70);
  rect(x,200,x,50);
  rect(x,x,x,x);
 
  x=x+10;
}