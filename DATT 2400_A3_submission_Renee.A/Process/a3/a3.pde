//credits:
  //https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
  //https://processing.org/examples/bounce.html
/********* VARIABLES *********/

// We control which screen is active by settings / updating
// gameScreen variable. We display the correct screen according
// to the value of this variable.
//
// 0: Initial Screen
// 1: Game Screen
// 2: Game-over Screen

//globalvariables
int gameScreen = 0;
int rectX, rectY, rectX1, rectY1;
int rectSize = 25;
int rectColour = color(15,32,71);


//**screensetup**

void setup() {
  size(700,500);
  rectX=width/12;
  rectY=height/10;
  rectX1=width/12;
  rectY1=height/10;
}

void draw() {
   // Display the contents of the current screen
  if (gameScreen == 0) {
    homeScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    overScreen();
  }
  
}

//****SCREENCONTENTS*****//
//in tabs

/*****INPUTS*****/

void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
}

/********* OTHER FUNCTIONS *********/


void startGame() {
  gameScreen=1;
}


void drawRect() {
  fill(rectColour);
  rect(rectX, rectY, rectX1, rectY1);
  noStroke();
}
