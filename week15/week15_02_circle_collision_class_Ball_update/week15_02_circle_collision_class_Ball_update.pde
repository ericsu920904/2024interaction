//week15_02_circle_collision_class_Ball_update
void setup(){
  size(640,360);
}

Ball ball = new Ball(100,200,20);
void draw(){
  ball.update();//加這行
  ball.display();
}
//把class ball移到右邊的新分頁
