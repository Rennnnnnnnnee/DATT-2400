 
//3 concepts: image, mouse interaction, if else statements, timer, text

//code referenced from references:
  //https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
  //DATT 2400, Dan Tapper, week 3 lecture code example "PVector ball"
  //https://happycoding.io/tutorials/processing/collision-detection
  //https://openprocessing.org/sketch/375820
  //https://processing.org/examples/transparency.html
//image credits: https://www.shutterstock.com/image-illustration/landscape-anime-manga-scenery-4k-drawing-2188334811

int gameScreen = 0;

int x;
int y;

//define platforms

float platformWidth = 75;
float platformHeight = 5;

//***SETUP
PImage bg;

void setup() {
  size(700, 500);
  begin = millis(); 
 
  bg = loadImage("sky1.png");

}

void draw() {

  // Display the contents of the active screen

  if (gameScreen == 0) {
    homeScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2 ) {
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
    text("GO!", width/2, height/2+110); 
    textSize(20); 
    text("click to start", width/2, height/2+180); 
    //learned!width and height must by in their right placement in code,
    //otherwise it would not center!)
}

void gameScreen() {
    //code for game screen
   //background(150);
   
  //background of gameScreen();
  image(bg, 0, 0);
  bg.resize(700,500);
  tint(200);
  
    //draw HealthBar
   HealthBar();
  
    //draw the bouncing rectangle
    drawRect();
  
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
    text("OH NO!!", width/2, height/2+80); 
    textSize(80);
    text("HE ESCAPED!", width/2, height/2-120); 
    textSize(20);
    text("click anywhere to battle him again before he leaves...", width/2, height/2+140); 
    textSize(10);
    text("oh no...it doesnt work :( he got away", width/2, height/2+160); 
    //learned!width and height must by in their right placement in code,
    //otherwise it would not center!)
}

void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
}

  float click;
float max;

void mouseClicked() { //not sure if this works...
  
  if (click == max(0,3)) {
    overScreen();
  } else if (click == max(0,2)){
    max(0,3);
  }
}

void HealthBar() {
  rect(20,20,90,10);
  fill(#11BC98);

  rect(20,20,50,10);
}

void startGame() {
  gameScreen=1;
}
