///
PShape world;
void setup(){
  size(800,400);
  world = loadShape("world.svg");
}
float s = 0.4,x=0,y=0;
float realX = 0,realY = 0;
void draw(){
  background(#92C2F5);
  translate(x,y);//加上一個移動量x,y
  scale(s);
  shape(world);
} 
void mouseDragged(){
  x += mouseX-pmouseX;
  y += mouseY-pmouseY;
}
void mouseWheel(MouseEvent e) {
  realX = (mouseX-x)/s;
  realY = (mouseY-y)/s;
  float oldS=s;
  if (e.getCount()>0)s *=0.9;
  else s *=1.1;
  x=x+realX*oldS-realX*s;
  y=y+realY*oldS-realY*s;
}
