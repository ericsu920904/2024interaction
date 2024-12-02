///week13_10_tetris_falling_if_frameCount_for_for_if
void setup(){
    size(240,440);
}

color [] c= {#000000,#777777,#9900CC,#CCCC00,#00B500,#CC0000};

void draw(){
  for(int i=0;i<22;i++){
    for(int j=0;j<12;j++){
      int now = grid[i][j];
      fill(c[now]);
      rect(j*20,i*20,20,20);
    }
  }
  if(frameCount%50==0){
    int bad=0;//一開始沒有壞掉
    for(int i=20;i>=1;i--){//從上到下的迴圈
      for(int j=1;j<12-1;j++){//最左右不動，中間才動
        if(grid[i][j]==2){//如果是可以移動的主角，暫定是2，之後是0
          if(grid[i+1][j]!=0 &&  grid[i+1][j]!=2)bad=1;
          }//不能往下走
        }
      }
      if(bad==0){
        for(int i=20;i>=1;i--){
           for(int j=1;j<12-1;j++){
             if(grid[i][j]==2){
               grid[i+1][j]=2;
               grid[i][j]=0;
            
          }
        }
      }
    }
  }
}


int [][]grid = {
  {1,1,1,1,1,1,1,1,1,1,1,1},
  {1,0,0,0,0,2,0,0,0,0,0,1},
  {1,0,0,0,0,2,2,0,0,0,0,1},
  {1,0,0,0,0,2,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,1},
  {1,1,1,1,1,1,1,1,1,1,1,1}
};
