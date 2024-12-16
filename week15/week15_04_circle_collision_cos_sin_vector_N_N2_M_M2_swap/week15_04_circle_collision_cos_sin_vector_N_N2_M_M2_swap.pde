//week15_04_circle_collision_cos_sin_vector_N_N2_M_M2_swap
//我們要在這裡，先測試最後的結果
void setup(){
  size(640,360);
}

Ball ball = new Ball(100,200,60);
Ball ball2 = new Ball(300,200,60);
void draw(){
  background(51);
  if(ball.checkCollision(ball2))fill(#FFAAAA);
  else fill(255);
  ball.update();//加這行
  ball.display();
  ball2.update();//加這行
  ball2.display();
  
}
//把class ball移到右邊的新分頁
