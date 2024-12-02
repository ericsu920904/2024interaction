//week13_3_animated_background_pedro_pushMatrix_translate_rotate
PImage img;
void setup(){
  size(700,500);
  img = loadImage("pedro.png");
  imageMode(CENTER);
  
}

void pedro(int x,int y){
  pushMatrix();
    translate(x,y);
    rotate(radians(frameCount));
    image(img,0,0);
   popMatrix();
}
void draw(){
  background(0);
  pedro(mouseX,mouseY);
  pedro(200,125);
  pedro(500,125);
  pedro(200,350);
  pedro(500,350);
}
