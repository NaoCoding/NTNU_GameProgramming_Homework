int scene;
PImage img1 ,img2,img3; 
PFont ff;
title_ word = new title_("2D 點陣彩圖置入及換圖","By 41247001S 盧昱安\n   滑鼠按下開始");
title_ word2 = new title_("","把蝴蝶移動在方塊中1秒\n就會切換到下一個場景\n點擊右鍵可更換蝴蝶樣式");
mouseCursor_ cursor_;
int started = 0;
int leavedetect = 0;
int cursor_show_num = 1;
float rotate_angle = 0;
void setup(){
  size(1180, 590);
  scene = 0;
  //printArray(PFont.list());
  ff = createFont("細明體",32);
  textFont(ff);
  surface.setTitle("41247001S_Hw2");
  surface.setResizable(false);
  surface.setLocation(100, 100);
  img1 = loadImage("p1.jpg");
  img2 = loadImage("p2.png");
  img3 = loadImage("p3.png");
  cursor_ = new mouseCursor_(img2,img3); 
  word2.py = 25;

}
void draw(){
  background(0);
  if(started==0){
  word.update();}
  if(started==1){
    background(img1);
    //rotate(1);
    if(mousePressed && mouseButton == RIGHT) cursor_show_num = cursor_show_num == 1 ? 2 : 1;
    word2.const_update();
    stroke(0);
    strokeWeight(3);
    rect(100,100,200,200);
    noStroke();
    cursor_.update();
    scene1_change_detection();
  }
  if(started==2){
    background(0);
    rotate_angle += 0.02;
    rotate(rotate_angle);
    for(int i=500;i>=-500;i-=10){
      float size = (500-i)/100;
     for(int j=2000;j>=-2000;j-=200){
      rect(j-i,i,size,size); 
      rect(i,i-j,size,size);
     }
    }
    
  }
  
  
}

void scene1_change_detection(){
 
  if(mouseX <= 290 && mouseX >= 90 && mouseY <=290 && mouseX >= 90)leavedetect++;
  else leavedetect = 0;
  if(leavedetect>=60) started ++;
  
}

class mouseCursor_{
  
  PImage cursor_img,cursor_img2;
  mouseCursor_(PImage target,PImage target2){cursor_img = target;cursor_img2 = target2;}
  void update(){
   if(cursor_show_num == 1){image(cursor_img,mouseX - 50,mouseY - 50); }
   else image(cursor_img2,mouseX - 50,mouseY - 50);
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
      text(author_,  px+175,py+50);
    }
    void const_update(){
      textSize(64);
      text(content_, px,py);
      textSize(32);
      text(author_,  px+175,py+50);
    }
  
}
void mouseClicked(){
 
  if(started==0) started = 1;
  
}
