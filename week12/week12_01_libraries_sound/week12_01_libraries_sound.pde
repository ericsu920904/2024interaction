//week12_01_libraries_sound
//官網-documentation-libraries-sound部分
//https://processing.org/reference/libraries/sound/index.html
//我們教過play(),stop(),pause()
import processing.sound.*;
SoundFile sound1,sound2;//兩段音樂
int playing =2;
void setup(){
  size(640,360);
  background(255);
  sound1 = new SoundFile(this,"Intro Song_Final.mp3");//week09_4可下載到
  sound2 = new SoundFile(this,"In Game Music.mp3");//week09_4可下載到
}
void draw(){
  if(sound1.isPlaying()){//音樂1有沒有在撥放
    playing=1;
  }else if(sound2.isPlaying()){//音樂2有沒有在撥放
    playing=2;
  }else {//沒有音樂在撥放
    if(playing==1)sound2.play();//換另外一首
    else sound1.play();
   }
}
