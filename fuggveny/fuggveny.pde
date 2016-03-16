void setup(){
size(500,500);
}

void draw(){
  background(#ffffff);
  piros_korok();
  kek_negyzet();
  vonalak();
}

void piros_korok(){
  fill(#ff0000);
  ellipse(100,100,50,50);
  ellipse(400,400,50,50);
}

void kek_negyzet(){
  fill(#405EFF);
  rect(150,100,50,50);
  rect(200,300,100,100);
  rect(300,400,150,100);
  rect(250,450,50,50);
}
void vonalak(){
  line(140,50,30,70);
}


  