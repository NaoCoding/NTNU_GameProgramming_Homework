PFont ff;
String target = "";
int q = 0;
import http.requests.*;
String[] lines;
PostRequest runQuery;
void setup(){
 
  surface.setTitle("HW5_WebAccess_41247001S");

  surface.setResizable(false);
  surface.setLocation(100, 100);
  ff = createFont("細明體",32);
  textFont(ff);
  textSize(32);
  size(1200,675);
  fill(26,25,124);
  
}

void upload(){
  String dnow = String.valueOf(year()) + String.valueOf(month()) + String.valueOf(day());
  q = 1;
  dnow = "https://docs.google.com/forms/d/e/1FAIpQLSch_DcS8gqJrD_RybGz3MMYQoDc2ILnjZaZfX8pQwSFnvnYEw/formResponse?entry.1307792847=" + target +"&entry.64967417="+dnow;
  dnow = dnow.replace(" ","%20");
  link(dnow);
}

void getdata(){
  q = 2;
  String uurl = "https://docs.google.com/spreadsheets/d/1tg2Yp9ucWgVY5lSox3v3V2sJmwp1eTz24QHkwscrrDs/export?format=csv&sheet=1";
  lines = loadStrings(uurl);
  
}
void getdata2(){
  q = 3;
  String uurl = "https://docs.google.com/spreadsheets/u/0/d/1tg2Yp9ucWgVY5lSox3v3V2sJmwp1eTz24QHkwscrrDs/gviz/tq?tqx=out:csv&tq=select%20%2A%20where%20B%20%3D%20%27www%27&gid=1493357240";
  lines = loadStrings(uurl);
  
}

void draw(){
  if(q==0){
   background(233);
    text(target,100,100);
    text("請於鍵盤輸入上傳資料!\n按下Enter後即上傳",100,500); 
    
  }
  else if(q==1){
    background(233);
    text("上傳成功，再次按下Enter鍵即可存取雲端資料庫",300,300); 
  }
  else if(q==2){
    background(233);
    text("最近三筆資料為:",100,100);
    text(lines[lines.length-1],100,200);
    text(lines[lines.length-2],100,300);
    text(lines[lines.length-3],100,400);
    text("再次按下Enter鍵即可查看內容為www的資料",100,500); 
  }
  else{
    background(233);
    text("最近三筆內容為www的資料為:",100,100);
    if(lines.length>0)text(lines[lines.length-1],100,200);
    if(lines.length>1)text(lines[lines.length-2],100,300);
    if(lines.length>2)text(lines[lines.length-3],100,400);
  }
}
void keyPressed(){
  if(q==0){
   if(key==8)target = target.substring(0,target.length()-1);
  if(key==13 || key == 10)upload();
  else target += key;   
  }
  else if(q==1){
    
    if(key==13 || key == 10)getdata();
  }
  else if(q==2){
    if(key==13 || key == 10)getdata2();
  }
  
  
}
