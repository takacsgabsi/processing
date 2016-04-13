class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}

class Hold {
  float x;
  float y;
  float r;

  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#2C2AB7);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }
  
  void mozogj(){
    x=x+0.5;
  
  }
}

class Felho {
  float x;
  float y;
  float r;
  
  void keletkezz(){
    x=random(0,500);
    y=random(0, 500);
    r=random(30,300);
  }
    
 void latszodj(){
  fill(#FFFFFF);
  stroke(2);
  ellipse(x,y,r,r/3);
 }
  void ussz(){
    x=x+0.2;
    y=y+0.1;
  }
    
}
  
Csillag[] csillagok = new Csillag[1000];
Felho[] felhok= new Felho[3];

//Csillag cs1=new Csillag();
//Csillag cs2=new Csillag();
//Csillag cs3=new Csillag();
Hold hold=new Hold();
Felho felho=new Felho();

void setup() {
  size(500, 500);
  //cs1.szuless();
  //cs2.szuless();
  //cs3.szuless();
  felho.keletkezz();
   
  
  csillagok[0]= new Csillag();
  csillagok[1]= new Csillag();
  csillagok[6]= new Csillag();
  felhok[0]= new Felho();
  felhok[1]= new Felho();
  felhok[2]= new Felho();
  
  csillagok[1].szuless();
  
  int szamlalo=0;
while(szamlalo<3){
  felhok[szamlalo]= new Felho();
  felhok[szamlalo].keletkezz();
  szamlalo=szamlalo+1;
}


while(szamlalo<1000){
  csillagok[szamlalo]= new Csillag();
  csillagok[szamlalo].szuless();
  szamlalo=szamlalo+1;
}
  
  hold.x=50;
  hold.y=75;
  hold.r=40;
}

void draw() {
  background(#2C2AB7);
  //cs1.szuless();
  //cs2.szuless();
  //cs3.szuless();
  //cs1.ragyogj();
  //cs2.ragyogj();
  //cs3.ragyogj();
  hold.vilagits();
  hold.mozogj();
  felho.latszodj();
  felho.ussz();
  
  
  int szamlalo=0;
while(szamlalo<1000){
  csillagok[szamlalo].ragyogj();
  szamlalo=szamlalo+1;
}
while(szamlalo<3){
  felhok[szamlalo].keletkezz();
  szamlalo=szamlalo+1;
}

  }