//week14_7_cute_cursor_kitty_cursor
PImage imgcute,imgkitty;
void setup(){
  size(500,500);
  imgcute = loadImage("cute.png");
  imgkitty = loadImage("kitty.png");
  cursor(imgkitty);
}
void draw(){
  background(#FFFFF2);
  if(frameCount%120==0)cursor(imgcute);
  if(frameCount%120==60)cursor(imgkitty);
}
