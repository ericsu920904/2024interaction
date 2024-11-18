//week11_02_optical_illusion_draw
size(600,600);
noStroke();
fill(236,152,52);//color1
rect(0,0,300,300);

fill(122,202,249);//color2
rect(300,0,300,300);

fill(129,241,128);//color3
rect(0,300,300,300);

fill(230,95,115);//color4
rect(300,300,300,300);

fill(122,202,249);//color2
for(float y=0;y<300;y+=15){
  for(float x=0;x<300;x+=30){
    ellipse(x+7,y,11,11);
    ellipse(x+22,y+7,11,11);
  }
}

fill(236,152,52);//color1
for(float y=0;y<300;y+=15){
  for(float x=0;x<300;x+=30){
    ellipse(300+x+7,y,11,11);
    ellipse(300+x+22,y+7,11,11);
  }
}

fill(230,95,115);//color4
for(float y=0;y<300;y+=15){
  for(float x=0;x<300;x+=30){
    ellipse(x+7,y+307,11,11);
    ellipse(x+22,y+7+307,11,11);
  }
}

fill(129,241,128);//color3
for(float y=0;y<300;y+=15){
  for(float x=0;x<300;x+=30){
    ellipse(300+x+7,y+307,11,11);
    ellipse(300+x+22,y+7+307,11,11);
  }
}
