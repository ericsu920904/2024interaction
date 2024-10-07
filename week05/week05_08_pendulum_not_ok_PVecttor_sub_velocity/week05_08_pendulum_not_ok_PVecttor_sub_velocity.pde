//week05_08_pendulum_not_ok_PVecttor_sub_velocity
void setup(){
  size(400,600);
}
float x=200,y=300;
void draw(){
  background(255);
  stroke(0);
  line(200,100,x,y);
  ellipse(x,y,50,50);
  stroke(255,0,0);//紅色往下的線
  line(x,y,x,y+100);
  
  PVector d=new PVector(x-200,y-100).normalize();
  PVector d2=new PVector(0,2);
  float g =PVector.dot(d,d2);//cos(a)
  d.mult(100*g);
  stroke(0,255,0);//綠色線往右下
  line(x,y,x+d.x,y+d.y);
  
  PVector N =  PVector.sub(d2.mult(100),d);//PVector N = new PVector(d.y,-d.x).normalize();//長度1
  //N.mult(100*sin(acos(g)));//g是cos(a),acos(g)就是角度a
  stroke(0,0,255);//藍色線往右下
  line(x,y,x+N.x,y+N.y);
  
  v.x += N.x/1000;
  v.y += N.y/1000;
  x += v.x;
  y += v.y;
}
PVector v = new PVector();
void mouseDragged(){//void mouseDragged()
  x = mouseX;
  y = mouseY;
}
