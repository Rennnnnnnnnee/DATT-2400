void platformC() {
  stroke(255);
   
  rect(pRectX2, pRectY2, platformWidth, platformHeight);
 
  //if I keep moving in my current X direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth + bouncingRectSpeedX > pRectX2 && 
      bouncingRectX + bouncingRectSpeedX < pRectX2 + platformWidth && 
      bouncingRectY + bouncingRectHeight > pRectY2 && 
      bouncingRectY < pRectY2 + platformHeight) {
    bouncingRectSpeedX *= -1;
  }
  //bounce off left and right edges of screen
  else if(bouncingRectX < 0 || bouncingRectX + bouncingRectWidth > width){
    bouncingRectSpeedX *= -1;
  }
  
  //if I keep moving in my current Y direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth > pRectX2 && 
      bouncingRectX < pRectX2 + platformWidth && 
      bouncingRectY + bouncingRectHeight + bouncingRectSpeedY > pRectY2 && 
      bouncingRectY + bouncingRectSpeedY < pRectY2 + platformHeight) {
    bouncingRectSpeedY *= -1;
  }
  //bounce off top and bottom edges of screen
  else if(bouncingRectY < 0 || bouncingRectY + bouncingRectHeight > height){
    bouncingRectSpeedY *= -1;
  }
  
}
