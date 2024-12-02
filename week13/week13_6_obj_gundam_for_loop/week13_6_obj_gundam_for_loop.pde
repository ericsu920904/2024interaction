//week13_6_obj_gundam_for_loop
PShape gundam;
void setup(){
  size(500,500,P3D);
  gundam = loadShape("Gundam.obj");
}
void draw(){
  background(#BBFF81);
    for(int x=70;x<=450;x+=60){
      for(int y=150;y<=450;y+=150){
        drawgundam(x,y);
      }
    }
}
void drawgundam(int x,int y){
  pushMatrix();
      translate(x,y);
      rotateY(radians(frameCount));
      rotate(radians(180));
      scale(5,5,5);
      shape(gundam,0,0);//shape(gundam,0,0,250/2,500/2);
  popMatrix();
}
