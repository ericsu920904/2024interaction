//week05_04_pendulum
void setup(){
  size(400,600);
  
}
float x=200,y=300;
void draw(){
  background(255);
  stroke(0);
  line(200,100,x,y);
  ellipse(x,y,50,50);

}
void mouseDragged(){
  x = mouseX;
  y = mouseY;
}
