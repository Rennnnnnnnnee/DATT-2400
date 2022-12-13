//3 concepts: image, mouse interaction, if else statements, timer
//credits:
  //https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
  //DATT 2400, Dan Tapper, week 3 lecture code example "PVector ball"
  //https://happycoding.io/tutorials/processing/collision-detection !!! --> this one edited fully with mine

int gameScreen = 0;

int x;
int y;


//define square
float bouncingRectX = 10;
float bouncingRectY = 10;
float bouncingRectWidth = 50;
float bouncingRectHeight = 50;
float bouncingRectSpeedX = 4;
float bouncingRectSpeedY = 4;


//define platforms
float pRectX = x+50;
float pRectY = y+300;
float pRectX1 = x+450;
float pRectY1 = y+100;
float pRectX2 = x+450;
float pRectY2 = y+400;
float pRectX3 = x+220;
float pRectY3 = y+450;
float pRectX4 = x+180;
float pRectY4 = y+500;
float platformWidth = 75;
float platformHeight = 5;

boolean stop = false;


void setup() {
  size(700, 500);
  begin = millis(); 
}

void draw() {
 
    // Display the contents of the active screen
  //activate screens

  if (gameScreen == 0) {
    homeScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2 ) {
    overScreen();
  } 
   

   
  if (gameScreen > height){
    bouncingRectSpeedY = 750 - bouncingRectY;
  } else if (gameScreen > width){
    bouncingRectSpeedX = 750 - bouncingRectX;
  }
 
}


void homeScreen() {
    //code for home screen
    background (0);
    textAlign(CENTER);
    textSize(20); 
    text("Battle Ninja Square– click on him as fast as possible!", width/2, height/2-180); 
    textSize(40); 
    text("Ready?", width/2, height/2-120); 
    textSize(240); 
    text("GO!", width/2, height/2+120); 
    //learned!width and height must by in their right placement in code,
    //otherwise it would not center!)
}

void gameScreen() {
    //code for game screen
   background(150);
 
    //draw the bouncing rectangle
  
  rect(bouncingRectX, bouncingRectX, bouncingRectWidth, bouncingRectHeight, 15);
  bouncingRectX += bouncingRectSpeedX;
  bouncingRectY += bouncingRectSpeedY;
  fill(55,83,58); 

   //platforms
   platformA();
   platformB();
   platformC();
   platformD();
   
   timer();
   
}

void overScreen() {
    //code for gameover screen
    background (0);
    fill(255);
    textAlign(CENTER); 
    textSize(180); 
    text("OH NO!!", width/2, height/2+100); 
    textSize(80);
    text("HE ESCAPED!", width/2, height/2-120); 
    textSize(20);
    text("click anywhere to battle him again before he leaves...", width/2, height/2+140); 
    //learned!width and height must by in their right placement in code,
    //otherwise it would not center!)
}

void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
}

void startGame() {
  gameScreen=1;
}



//time: end game when time up
