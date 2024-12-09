 //week14_2_loadPixels_pixels_updatePixels

void setup(){
  size(500,500);
  background(255);
}

void draw(){
  
}

void mouseDragged(){
  if(mouseButton==LEFT){
    line(mouseX,mouseY,pmouseX,pmouseY);
    loadPixels();//取出畫面像素
    for(int i=0;i<width*height;i++){ //全部的點都去巡一下顏色
      if(pixels[i]!= -1)pixels[i]=color(random(255),random(255),random(255));
    }
    updatePixels();
  }
}
