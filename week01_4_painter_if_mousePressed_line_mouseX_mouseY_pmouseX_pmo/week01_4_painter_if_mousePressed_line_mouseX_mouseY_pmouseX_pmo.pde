//week01_4_painter_if_mousePressed_line_mouseX_mouseY_pmouseX_pmouseY
void setup(){
  size(500,500);
}
void draw(){
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
}//如果mousepress就畫線mouse的xy到mouse的previous xy
