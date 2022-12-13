//credit: 
//https://openprocessing.org/sketch/375820

int begin; 
int duration = 20;
int time = 20;
 
void timer() {
  
  if (time > 0){  
    time = duration - (millis() - begin)/1000;
    textSize(40);
    text(time, width/2, height/2+120);
  }
  
  if (time <= 0) {
    overScreen();
  }
  
}
