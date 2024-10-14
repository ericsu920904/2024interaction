//week06_01_schulte_table01_line_fill_textSize_text_for
void setup(){
  size(500,500);
}
void draw(){
  background(#FFFFF2);
  
  line(0,100,500,100);
  line(0,200,500,200);
  line(0,300,500,300);
  line(0,400,500,400);
  
  line(100,0,100,500);
  line(200,0,200,500);
  line(300,0,300,500);
  line(400,0,400,500);
  
  fill(0);
  textSize(50);
  textAlign(CENTER,CENTER);
  
  for(int y=50;y<=450;y+=100){
    for(int x=50;x<=450;x+=100)
    text("1",x,y);
  }
}
