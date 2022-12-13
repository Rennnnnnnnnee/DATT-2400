//3 concepts: PVector, image, mouse interaction, if else statements
//credits:
  //https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
  //DATT 2400, Dan Tapper, week 3 lecture code example "PVector ball"
  //https://happycoding.io/tutorials/processing/collision-detection !!! --> this one edited fully with mine

int gameScreen = 0;

//define square
float bouncingRectX = 10;
float bouncingRectY = 10;
float bouncingRectWidth = 100;
float bouncingRectHeight = 50;
float bouncingRectSpeedX = 1;
float bouncingRectSpeedY = 2;

//int rectSize = 15;
//int rectColour = color(15,32,71);

int x;
int y;

//define platforms
color platformColor = color(255);
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


void setup() {
  size(700, 500);
  
   //populate with x,y and z values
  //pos = new PVector(random(width), random(height), random(40, 70));
  //acc = new PVector(random(-10, 10), random(-10, 10), 0.0);
}

void draw() {
    // Display the contents of the active screen
  //add current speed to location of square
  //constrain square
   //if ( (pos.x > width) || (pos.x < 0)) {
      //acc.x = acc.x * -1;
   //}
  
   //if ( (pos.y > width) || (pos.y < 0)) {
      //acc.y = acc.y * -1;
   //}
   
   
  //activate screens
  if (gameScreen == 0) {
    homeScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    overScreen();
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
    
   bounce();
}

void overScreen() {
    //code for gameover screen
    background (0);
    textAlign(LEFT);
    textSize(40); 
    textSize(240); 
    text("OH NO!", width/2, height/2+120); 
    text("now what?", width/2, height/2-120); 
    text("click anywhere to battle him again before he leaves...", width/2, height/2-180); 
    //learned!width and height must by in their right placement in code,
    //otherwise it would not center!)
}

void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
  //mouse-click = aim at square, fire circles
}

void startGame() {
  gameScreen=1;
}


//time: end game when time up
