//week08_4_RPG_2d_array_floor_map
int [][] floor={
  {8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8 },
  {8,0,2,3,4,8,8,8,8,8,3,8,8,8,12,8,8,2,6,8 },
  {8,0,6,5,4,8,5,8,8,8,8,8,2,8,12,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,8,5,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,8,1,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,3,3,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,8,2,8,8,2,2,8 },
  {8,8,8,5,4,8,8,8,7,10,11,8,2,8,4,8,8,2,2,8 },
  {8,8,8,5,4,2,3,4,7,10,11,8,2,8,2,8,8,2,2,8 },
  {8,8,8,5,4,8,8,8,7,10,11,8,2,8,11,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,3,2,8,11,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,8,17,8,8,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,8,13,7,7,2,2,8 },
  {8,8,8,5,4,8,5,8,7,10,11,8,2,8,14,8,8,2,2,8 },
  {8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8 },
};
PImage img,user;
PImage[] fimg = new PImage[40];
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
  user= loadImage("15.png");//勇者
  for(int i=0;i<=18;i++)fimg[i] = loadImage(i+".png");
}
int userI=2,userJ=2;
void draw(){
  //background(img);
  for(int i=0;i<15;i++){
    for(int j=0;j<20;j++){
      int now = floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
  image(user,userJ*32,userI*32);
}
void keyPressed(){
  
  int newI=userI,newJ=userJ;
  if(keyCode==RIGHT)newJ++;
  if(keyCode==LEFT)newJ--;
  if(keyCode==UP)newI--;
  if(keyCode==DOWN)newI++;
  if(floor[newI][newJ]!=8 && floor[newI][newJ]!=5){
    userI=newI;
    userJ=newJ;
   
  }
}
