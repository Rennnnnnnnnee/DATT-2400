Ninja[] square;
//define number of squares 
int num = 4;

boolean out = false;

int gameScreen = 0;
int rectX, rectY, rectX1, rectY1;
int rectSize = 25;
int rectColour = color(15,32,71);

 PVector location;
 PVector velocity;
 PVector acceleration;

void setup() {
  square = new Ninja[num];
  
  for (int i = 0; i < num; i++) {
    square[i] = new Ninja();
  }
  
  size(700, 500);
  rectX=width/12;
  rectY=height/10;
  rectX1=width/12;
  rectY1=height/10;
    line(0, 100, 10, 120);

}

void draw() {
    // Display the contents of the active screen
  //add current speed to location of square
  location.add(velocity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  
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
    drawRect();
    drawLines();
}

void overScreen() {
    //code for gameover screen
    background (0);
    textAlign(LEFT);
    textSize(40); 
    text("now what?", width/2, height/2-120); 
    textSize(240); 
    text("OH NO!", width/2, height/2+120); 
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

class Ninja {
   
   Ninja() {

     location = new PVector(random(width), random(height));
     velocity = new PVector(2, 20);
     //limit = random(5,25);
   }
}

 void drawRect() {
    fill(rectColour);
    rect(rectX, rectY, rectX1, rectY1);
    noStroke();
    
    
 }

int x,y,x1,y1;

void drawLines() {
  line(x, y, x1, y1);
  line(-x, -y, -x1, -y1);
  line(0, 100, 10, 120);
  //line(x, y, x1, y1);
  //line(x, y, x1, y1);
  fill(0);
  stroke(0);
}
