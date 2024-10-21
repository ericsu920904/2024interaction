//week07_5_arras05_correct_move_translate_translate_mx_my
void setup(){
  size(500,400);
  
}
void keyPressed(){
  if(keyCode==RIGHT)x += 1;
  if(keyCode==LEFT)x -= 1;
  if(keyCode==UP)y -= 1;
  if(keyCode==DOWN)y += 1;
}
float x=250,y=200;
void draw(){
  background(219);//灰底
  translate(-x,-y);//讓全世界都反方向移動
  translate(width/2,height/2);//把0.0移到畫面正中心
  float mx=mouseX+x-width/2,my=mouseY+y-height/2;//換算mx,my的座標
  ellipse(mx,my,8,8);
  stroke(210);//灰底的線

  for(int i=0;i<30;i++){
    line(0,i*30,500,i*30);
    line(i*30,500,i*30,0);
  }
  float dx=mx-x,dy=my-y;//改用mx,my
  float a=atan2(dy,dx);
  line(x,y,mx,my);//cos()算出x的方向sin()算出y的方向
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
