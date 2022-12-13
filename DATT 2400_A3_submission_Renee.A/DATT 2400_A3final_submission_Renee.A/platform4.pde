//define platforms
float pRectX3 = x+220;
float pRectY3 = y+450;


void platformD() {
  stroke(255);
 
  rect(pRectX3, pRectY3, platformWidth, platformHeight);
  

  //if I keep moving in my current X direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth + bouncingRectSpeedX > pRectX3 && 
      bouncingRectX + bouncingRectSpeedX < pRectX3 + platformWidth && 
      bouncingRectY + bouncingRectHeight > pRectY3 && 
      bouncingRectY < pRectY3 + platformHeight) {
    bouncingRectSpeedX *= -1;
  }
  //bounce off left and right edges of screen
  else if(bouncingRectX < 0 || bouncingRectX + bouncingRectWidth > width){
    bouncingRectSpeedX *= -1;
  }
  
  //if I keep moving in my current Y direction, will I collide with the center rectangle?
  if (bouncingRectX + bouncingRectWidth > pRectX3 && 
      bouncingRectX < pRectX3 + platformWidth && 
      bouncingRectY + bouncingRectHeight + bouncingRectSpeedY > pRectY3 && 
      bouncingRectY + bouncingRectSpeedY < pRectY3 + platformHeight) {
    bouncingRectSpeedY *= -1;
  }
  //bounce off top and bottom edges of screen
  else if(bouncingRectY < 0 || bouncingRectY + bouncingRectHeight > height){
    bouncingRectSpeedY *= -1;
  }
  
}
