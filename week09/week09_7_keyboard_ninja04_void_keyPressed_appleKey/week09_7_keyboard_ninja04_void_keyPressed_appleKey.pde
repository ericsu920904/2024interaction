//week09_7_keyboard_ninja04_void_keyPressed_appleKey
PImage board;
void setup(){
  size(600,400);
  board=loadImage("board.png");
}
float appleX=100,appleY=500,appleVX=3,appleVY=-30;
char appleKey;
void randomApple(){
  appleX = random(100,500);
  appleY = 500;
  appleVX = random(-8,8);
  appleVY = random(-30,-20);
  if(appleX<300)appleVX=random(-8,0);
  appleKey =(char) ('a'+int(random(25)));
}
void draw(){
  background(board);
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);//紅色蘋果
  fill(255,255,0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text(appleKey,appleX,appleY);
  appleX += appleVX;//照著運動的速度，X往右移
  appleY += appleVY;//照著運動的速度，Y也會移動
  appleVY += 0.98;//0.98=重力加速度(移動的速度會受加速度影響)
  if(appleX>600 || appleX<0 || appleY>550){
    randomApple();
  }//當蘋果出界時，重設新的蘋果的位置、速度
}
