//define platforms
float pRectX1 = x+450;
float pRectY1 = y+100;


void platformB() {
  stroke(255);
   
  rect(pRectX1, pRectY1, platformWidth, platformHeight);

  //if I keep moving in my current X direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth + bouncingRectSpeedX > pRectX1 && 
      bouncingRectX + bouncingRectSpeedX < pRectX1 + platformWidth && 
      bouncingRectY + bouncingRectHeight > pRectY1 && 
      bouncingRectY < pRectY1 + platformHeight) {
    bouncingRectSpeedX *= -1;
  }
  //bounce off left and right edges of screen
  else if(bouncingRectX < 0 || bouncingRectX + bouncingRectWidth > width){
    bouncingRectSpeedX *= -1;
  }
  
  //if I keep moving in my current Y direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth > pRectX1 && 
      bouncingRectX < pRectX1 + platformWidth && 
      bouncingRectY + bouncingRectHeight + bouncingRectSpeedY > pRectY1 && 
      bouncingRectY + bouncingRectSpeedY < pRectY1 + platformHeight) {
    bouncingRectSpeedY *= -1;
  }
  //bounce off top and bottom edges of screen
  else if(bouncingRectY < 0 || bouncingRectY + bouncingRectHeight > height){
    bouncingRectSpeedY *= -1;
  }
  
}
