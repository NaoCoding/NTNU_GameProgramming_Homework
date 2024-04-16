int scene;
PImage img;
PFont ff;
void setup(){
  size(1180, 590);
  scene = 0;
  //printArray(PFont.list());
  ff = createFont("細明體",32);
  textFont(ff);
  img = loadImage("bg.jpg");
  background(img);
  surface.setTitle("41247001S_Hw1");
  surface.setResizable(false);
  surface.setLocation(100, 100);
  startscreen();
}
void draw(){
  
  
}
void startscreen(){
 
  textSize(60);
  fill(255);
  text("Author: 41247001S\n HW1_向量繪圖造型練習\n  學生：盧昱安",50,100);
  fill(#f8e3b5);
  rect(400,400,400,100);
  fill(0);
  textSize(48);
  text("Start!",535,470);
  
}
void scene1(){
  
    background(img);
    fill(255);
  text("Author: 41247001S\n HW1_向量繪圖造型練習\n  學生：盧昱安",50,100);
    fill(#f8e3b5);
  rect(400,400,400,100);
  textSize(48);
  fill(0);
  text("Change Scene!",450,470);
  fill(#f8e3b5);
  triangle(130+350, 100, 120+370, 300, 400+200, 300);
  fill(#f8e3b5);
  triangle(130+600, 100, 120+370, 300, 400+200, 300);
  fill(#f8e3b5);
  ellipse(600, 250, 300*5/3.8*0.7, 300*0.7);
  stroke(0, 0, 0);
  line(300+300, 360-100, 300+300, 370-100);
  line(270+300, 390-100, 300+300, 370-100);
  line(330+300, 390-100, 300+300, 370-100);
  fill(0, 0, 0);
  ellipse(530, 230, 90*0.7, 90*0.7);
  fill(255, 255, 255);
  ellipse(540, 220, 40*0.7, 40*0.7);
  fill(0, 0, 0);
  ellipse(530+150, 230, 90*0.7, 90*0.7);
  fill(255, 255, 255);
  ellipse(540+150, 220, 40*0.7, 40*0.7);
  
}

void scene2(){
  background(img);
  fill(255);
  text("Author: 41247001S\n HW1_向量繪圖造型練習\n  學生：盧昱安",50,100);
  fill(#f8e3b5);
  rect(400,400,400,100);
  textSize(48);
  fill(0);
  text("Change Scene!",450,470);
  fill(#FAF203);
  ellipse(600, 250, 300*5/3.8*0.7, 300*0.7);
  fill(0);
  ellipse(550, 230, 40, 40);
  ellipse(650, 230, 40, 40);
  noFill();
  strokeWeight(15);
  arc(600,250,240,160,radians(0),radians(180));
  
}

void scene3(){
  background(img);
  fill(255);
  text("Author: 41247001S\n HW1_向量繪圖造型練習\n  學生：盧昱安",50,100);
  strokeWeight(1);
    fill(#f8e3b5);
  rect(400,400,400,100);
  textSize(48);
  fill(0);
  text("Change Scene!",450,470);
  strokeWeight(15);
  fill(#f8e3b5);
  triangle(130+350, 100, 120+370, 300, 400+200, 300);
  fill(#f8e3b5);
  triangle(130+600, 100, 120+370, 300, 400+200, 300);
  fill(#f8e3b5);
  ellipse(600, 250, 300*5/3.8*0.7, 300*0.7);
  stroke(0, 0, 0);
  line(300+300, 360-100, 300+300, 370-100);
  line(270+300, 390-100, 300+300, 370-100);
  line(330+300, 390-100, 300+300, 370-100);
  fill(0, 0, 0);
  ellipse(530, 230, 90*0.7, 90*0.7);
  fill(255, 255, 255);
  ellipse(540, 220, 40*0.7, 40*0.7);
  fill(0, 0, 0);
  ellipse(530+150, 230, 90*0.7, 90*0.7);
  fill(255, 255, 255);
  ellipse(540+150, 220, 40*0.7, 40*0.7);
  strokeWeight(1);
}

void mousePressed(){
  //print("haha");  
 if(scene==0 && mouseX >=400 && mouseX <= 800 && mouseY >= 400 && mouseY <= 500){
   scene1();
   //print("1");
   scene = 1;
   return;
 }
 if(scene==1 && mouseX >=400 && mouseX <= 800 && mouseY >= 400 && mouseY <= 500){
   scene2();
   //print("1");
   scene = 2;
   return;
 }
 if(scene==2 && mouseX >=400 && mouseX <= 800 && mouseY >= 400 && mouseY <= 500){
   scene3();
   //print("1");
   scene = 0;
   return;
 }
 
  
}
