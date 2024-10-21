//week07_7_arras07_angle_bulletx_bullety_bulletvx_bulletvy
void setup(){
  size(500,400);
  
}
void keyPressed(){//按下去時會有速度,放開後速度會變成0
if(keyCode==RIGHT)vx = 1;//x += 1;
  if(keyCode==LEFT)vx = -1;//x -= 1;
  if(keyCode==UP)vy = -1;//y -= 1;
  if(keyCode==DOWN)vy = 1;//y += 1;
}

void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT)vx=0;
  if(keyCode==UP || keyCode==DOWN)vy=0;
}

void mousePressed(){
  bulletX=x;
  bulletY=y;
  bulletVX=cos(angle);
  bulletVY=sin(angle);
}


float angle;
float bulletX=0,bulletY=0,bulletVX=0,bulletVY=0;
float x=250,y=200,vx=0,vy=0;//代表移動速度
void draw(){
  x+=vx;
  y+=vy;
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
  angle = a;
  line(x,y,mx,my);//cos()算出x的方向sin()算出y的方向
  pushMatrix();
  mytank(x,y,a);
  popMatrix();
  if(bulletVX!=0 && bulletVY!=0){
    bulletX +=bulletVX;
    bulletY +=bulletVY;
    ellipse(bulletX,bulletY,20,20);
  }
  
  
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
