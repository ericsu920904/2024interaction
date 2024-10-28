//week08_2_RPG_background_32_32_rect
PImage img;
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
}
void draw(){
  background(img);
  for(int i=0;i<20;i++){
    for(int j=0;j<20;j++){
      noFill();
      stroke(0);
      rect(j*32,i*32,32,32);
    }
  }
  stroke(255,0,0);
  rect(J*32,I*32,32,32);
}
int I=-1,J=-1;
void mousePressed(){
  I = mouseY/32;
  J = mouseX/32;
}
