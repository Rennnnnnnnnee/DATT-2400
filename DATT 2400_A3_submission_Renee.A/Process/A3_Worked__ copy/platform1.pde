
void platformA() {
  stroke(255);
   
  rect(pRectX, pRectY, platformWidth, platformHeight);

  //if I keep moving in my current X direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth + bouncingRectSpeedX > pRectX && 
      bouncingRectX + bouncingRectSpeedX < pRectX + platformWidth && 
      bouncingRectY + bouncingRectHeight > pRectY && 
      bouncingRectY < pRectY + platformHeight) {
    bouncingRectSpeedX *= -1;
  }
  //bounce off left and right edges of screen
  else if(bouncingRectX < 0 || bouncingRectX + bouncingRectWidth > width){
    bouncingRectSpeedX *= -1;
  }
  
  //if I keep moving in my current Y direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth > pRectX && 
      bouncingRectX < pRectX + platformWidth && 
      bouncingRectY + bouncingRectHeight + bouncingRectSpeedY > pRectY && 
      bouncingRectY + bouncingRectSpeedY < pRectY + platformHeight) {
    bouncingRectSpeedY *= -1;
  }
  //bounce off top and bottom edges of screen
  else if(bouncingRectY < 0 || bouncingRectY + bouncingRectHeight > height){
    bouncingRectSpeedY *= -1;
  }
  
}
