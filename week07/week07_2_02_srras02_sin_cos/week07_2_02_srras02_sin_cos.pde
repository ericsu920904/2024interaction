//week07_2_02_srras02_sin_cos
void setup(){
  size(500,500);
  
}
float x=250,y=250;
void draw(){
  background(215,184,200);
  
  float dx=mouseX-x,dy=mouseY-y;
  float a=atan2(dy,dx);
  strokeWeight(20);
  line(x,y,x+cos(a)*40,y+sin(a)*40);//cos()算出x的方向sin()算出y的方向
  
  fill(167,167,175);
  stroke(110,100,113);
  rect(240,200,20,30);//砲管
  
  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(x,y,55,55);//圓形本體
  
  //line(x,y,mouseX,mouseY);
  
}
