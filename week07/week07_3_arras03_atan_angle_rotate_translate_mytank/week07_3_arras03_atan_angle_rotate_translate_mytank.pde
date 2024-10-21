//week07_3_arras03_atan_angle_rotate_translate_mytank
void setup(){
  size(500,500);
  
}
float x=250,y=200;
void draw(){
  background(215,184,200);
  
  float dx=mouseX-x,dy=mouseY-y;
  float a=atan2(dy,dx);
  line(x,y,mouseX,mouseY);//cos()算出x的方向sin()算出y的方向
  mytank(x,y,a);
 
  
}
void mytank(float x,float y,float a){
  translate(x,y);
  rotate(a);
  
  fill(167,167,175);
  stroke(110,100,113);
  rect(20,-10,30,20);//砲管
  
  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(0,0,55,55);//圓形本體
  
}
