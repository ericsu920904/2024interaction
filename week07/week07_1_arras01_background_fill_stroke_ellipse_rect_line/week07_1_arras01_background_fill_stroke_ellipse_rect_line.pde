//week07_1_arras01_background_fill_stroke_ellipse_rect_line
void setup(){
  size(500,500);
  
}
float x=250,y=250;
void draw(){
  background(215,184,200);
  fill(167,167,175);
  stroke(110,100,113);
  rect(240,200,20,30);//砲管
  
  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(x,y,55,55);//圓形本體
  
  line(x,y,mouseX,mouseY);
}
