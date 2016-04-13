size(1200, 700);
int x=0; 
int harmadik_x=1;
int harmadik_y=1;
float r=1;
float g=1;
float b=1;


 //minden harmadik négyzet legyen színes
while (x<1200) {

  int y=0;
  while (y<700) {
    rect(x, y, 10, 10);
    fill(#FFFFFF); 
   
  //  int minden_harmadik=3*10;
  //while(minden_harmadik>3*x && minden_harmadik>3*y) {
  rect(harmadik_x,harmadik_y, 10,10);
   harmadik_x=3*10*x;
    harmadik_y=3*10*y;
    r=random(0,255);
    g=random(0,255);
    b=random(0,255);
    fill(r,g,b);
    y+=10;}
   // }
      x+=10;
  }