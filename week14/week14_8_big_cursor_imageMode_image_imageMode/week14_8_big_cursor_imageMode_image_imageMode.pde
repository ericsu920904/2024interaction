//week14_8_big_cursor_imageMode_image_imageMode
PImage imgbigcute,imgbigkitty,imgCursor;
void setup(){
  size(500,500);
  imgbigcute = loadImage("bigcute.png");
  imgbigkitty = loadImage("bigkitty.png");
  imgCursor = imgbigkitty;
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER);
  image(imgCursor,mouseX,mouseY);
  imageMode(CENTER);
  if(frameCount%120==0)imgCursor = imgbigcute;
  if(frameCount%120==60)imgCursor = imgbigkitty;
}
