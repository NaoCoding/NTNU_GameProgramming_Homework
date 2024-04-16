import  ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
PFont ff;
PImage sound,play,replay;
float sound_vo = -20;
Minim minim;  
AudioPlayer player;  
int qq = 0;
title_ word = new title_("Diviners - Savannah","By 41247001S 盧昱安\n");
void setup(){
  size(1024,768);
  minim = new Minim(this); 
  player = minim.loadFile("music.mp3");
  surface.setTitle("41247001S_Hw3");
  surface.setResizable(false);
  ff = createFont("細明體",32);
  textFont(ff);
  sound = loadImage("sound.jpg");
  play = loadImage("play.png");
  replay = loadImage("replay.jpg");
  player.play();
  
}

void draw(){
  background(255);
  
  player.setGain(sound_vo);

    fill(0);
  strokeWeight(6);
  for(int i = 0; i < player.bufferSize() - 1; i++){
    line( i, height/7 +player.left.get(i)*height/7, 
          i+1, height/7 + player.left.get(i+1)*height/7 );
  }
  word.update();
  
  image(play,480,480);
  image(sound,15-5,500-20);
  image(replay,600,490);
  text("遊戲程式設計 : 音樂與多媒體撥放作業",250,700);
  
  if(mousePressed && qq >= 10){qq = 0;//print(sound_vo);
  //print(mouseX,mouseY,"\n");
    if(mouseY <= 600-20 && mouseY >= 535-20){
      if(mouseX >= 50-5 && mouseX <= 150-5)sound_vo = -100;
      if(mouseX >= 175-5 && mouseX <= 250-5)sound_vo = max(sound_vo-10,-100);
      if(mouseX >= 275-5 && mouseX <= 350-5)sound_vo = min(sound_vo+10,-10);
      if(mouseX >= 390-5 && mouseX <= 480-5)sound_vo = -10;
    }
    if(mouseY <= 590 && mouseY >= 490)if(mouseX >= 490 && mouseX <= 590){
      
    if(player.isPlaying()) player.pause();
    else player.loop();
    }
    if(mouseY <= 590 && mouseY >= 495 )if(mouseX >= 610 && mouseX <= 705)player.rewind();
  }
  qq ++;
  noFill();
  rect(5, 470, 1000, 270, 28);
  
}

//50,150,535,600
//175 250 275 350 390 480

class title_{
 
    String content_ , author_;
    float py = 295,px=590;
    int movement_ = -3;
    title_(String a , String b){
     content_ = a ;
     author_ = b;
    }
    void update(){
      px -= movement_;
      if(px<=0) movement_ *= -1;
      if(px>=600) movement_ *= -1;
      textSize(64);
      text(content_, px,py);
      textSize(32);
      text(author_,  px+150,py+50);
    }
    void const_update(){fill(0, 408, 612);
      textSize(64);
      text(content_, px,py);
      textSize(32);
      text(author_,  px+225,py+50);
    }
  
}
