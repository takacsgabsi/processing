String avatar = "https://api.adorable.io/avatars/500/";
String nevem = "takacsgabi";
String url = avatar+nevem;


PImage kep=loadImage(url,"png");

size(500,500);
image(kep,0,0);
textSize(32);
text(nevem,70,140);