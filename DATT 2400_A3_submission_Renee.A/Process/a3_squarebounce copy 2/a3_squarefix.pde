//3 concepts: PVector, image, mouse interaction, if else statements
//credits:
  //https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
  //https://processing.org/examples/bounce.html
  //DATT 2400, Dan Tapper, week 3 lecture code example "PVector ball"

PVector pos;
PVector acc;

int gameScreen = 0;

//define square
int rectSize = 25;
int rectColour = color(15,32,71);

//define platforms
color platformColor = color(255);
float platformWidth = 75;
float platformHeight = 5;

void setup() {
  size(700, 500);
  
   //populate with x,y and z values
  pos = new PVector(random(width), random(height), random(40, 70));
  acc = new PVector(random(-10, 10), random(-10, 10), 0.0);
}

void draw() {
    // Display the contents of the active screen
  //add current speed to location of square
  //constrain square
   if ( (pos.x > width) || (pos.x < 0)) {
      acc.x = acc.x * -1;
    }
  
   if ( (pos.y > width) || (pos.y < 0)) {
      acc.y = acc.y * -1;
    }
    
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
    pos.add(acc);

    //define square
    fill(rectColour);
    rect(pos.x, pos.y, pos.z, pos.z);
    noStroke();
    
    //define platforms
    drawPlatform1();
    drawPlatform2();
    drawPlatform3();
    drawPlatform4();
    drawPlatform5();
 
}

void overScreen() {
    //code for gameover screen
    background (0);
    textAlign(LEFT);
    textSize(40); 
    textSize(240); 
    text("OH NO!", width/2, height/2+120); 
    text("now what?", width/2, height/2-120); 
    //learned!width and height must by in their right placement in code,
    //otherwise it would not center!)
}

//****SCREENCONTENTS*****//
//in tabs

/*****INPUTS*****/

void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
}

void startGame() {
  gameScreen=1;
}

int x, y;
int x1, y1;
int x2, y2;
int x3, y3;
int x4, y4;

//define platforms, which Ninja Square jumps off of :)
void drawPlatform1() {
  fill(platformColor);
  rect(x+50, y+300, platformWidth, platformHeight);
}

void drawPlatform2() {
  fill(platformColor);
  rect(x1+450, y1+100, platformWidth, platformHeight);
}

void drawPlatform3() {
  fill(platformColor);
  rect(x2+450, y2+400, platformWidth, platformHeight);
}

void drawPlatform4() {
  fill(platformColor);
  rect(x3+220, y3+450, platformWidth, platformHeight);
}

void drawPlatform5() {
  fill(platformColor);
  rect(x4+50, y4+300, platformWidth, platformHeight);
}
