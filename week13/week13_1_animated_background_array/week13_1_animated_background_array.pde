//week13_1_animated_background_array
PImage []img = new PImage[3];
void setup(){
  size(225,225);
  img[0] = loadImage("cat1.png");
  img[1] = loadImage("cat2.png");
  img[2] = loadImage("cat3.png");
}
int I=0;
void draw(){
  background(img[I]);
  if(frameCount%20==0)I=(I+1)%3;
}
