PImage bg;
PFont ff;
title_ rr = new title_("點擊滑鼠開始遊戲","遊玩方法：點擊滑鼠使球跳躍躲避障礙物");
ball player = new ball();
int started = 0;
int ccc = 0;
int wcount = 0;
wall w1 = new wall();
wall w2 = new wall();
wall w3 = new wall();
int point = 0;


void setup(){
  surface.setTitle("HW4_場景與角色(團隊作業)");

  surface.setResizable(false);
  surface.setLocation(100, 100);
  ff = createFont("細明體",32);
  textFont(ff);
  textSize(32);
  size(1200,675);
  bg = loadImage("/image/bg.jpeg");
  background(bg);
  fill(26,25,124);
  
  
}

void draw(){
  
 background(bg);
 
 if(started == 0)rr.update();
 else{
   text("分數：",25,50);
   text(point,200,50);
   player.update();
   if(wcount>=90){
     wcount = 0;
     if(w3.appear==1){
       if(w1.appear==1 && w2.appear == 0){
          w2.appear = 1;
           w2.setup();
       }
       else if(w1.appear==0){
       w1.appear = 1;
     w1.setup();}
     }
     else{w3.appear = 1;
      w3.setup();
     }
     
   }
   wcount += 1;
   
   if(w3.appear==1)w3.draw();
   if(w1.appear==1)w1.draw();
   if(w2.appear==1)w2.draw();
 }
  
}

class wall{
  float h = random(50,500);
  float x = 1200;
  float y = random(-200,400);
  int appear = 0;
  void draw(){
     rect(x,y,100,h); 
     x -= 10;
     if(x<0){
     appear=0;
   point += 1;}
     if(x >= 0 && x <= 100 ){
        if(y+h >= player.py && y <= player.py){
           started = 0; 
           w1.appear = 0;
           w2.appear = 0;
           w3.appear = 0;
        }
     }
  }
  void setup(){
    appear  = 1;
     h = random(50,500);
  x = 1200;
  y = random(-200,400);
  }
  
}

class ball{
  float py = 295;
  int movement = -4;
  void update(){
    if(ccc >= 20)py -= movement;
    else{py += movement;
    ccc += 1;
    }
    if(py>600)py=600;
    circle(100,py,50);
    
    
  }
  
}

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
      text(author_,  px-50,py+50);
    }
    void const_update(){fill(0, 408, 612);
      textSize(64);
      text(content_, px,py);
      textSize(32);
      text(author_,  px-225,py+50);
    }
  
}
void mouseClicked(){
 
  if(started==0){started = 1;
  point = 0;}
  else{
    fill(random(0,100),random(0,100),0);
    ccc = 0;
  }
  
}
