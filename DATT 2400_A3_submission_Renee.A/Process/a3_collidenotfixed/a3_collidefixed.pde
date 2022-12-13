//3 concepts: PVector, image, mouse interaction, if else statements
//credits:
  //https://www.toptal.com/game/ultimate-guide-to-processing-simple-game
  //DATT 2400, Dan Tapper, week 3 lecture code example "PVector ball"
  //https://happycoding.io/tutorials/processing/collision-detection

PVector pos;
PVector acc;


int gameScreen = 0;

//define square
int rectSize = 15;
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
    pos.add(acc);
    drawRect();
    //define square
   // fill(rectColour);
   // rect(pos.x, pos.y, pos.z, pos.z);
    //noStroke();
    
    //define platforms
    drawPlatform1();
    drawPlatform2();
    drawPlatform3();
    drawPlatform4();
    drawPlatform5();
    
    //if square is moving in current X direction, will it collide
    //with platform1?
    if (pos.x + pos.z + acc.x > x &&
        pos.x + acc.x < x + platformWidth &&
        pos.y + pos.z > y && pos.y < y + platformHeight) {
       
        acc.x *= -1;
    }
    //bounce off left and right edges of screen
    else if (pos.x < 0 || pos.x + pos.z > width) {
      
        acc.x *= -1;
    }
    //if square is moving in current Y direction, will it collide
    //with platform1?
    if (pos.x + pos.z > x &&
        pos.x < x + platformWidth &&
        pos.y + pos.z + acc.y > y &&
        pos.y + acc.y < y + platformHeight) {
          
        acc.y *= -1;
     }
     //bounce off left and right edges of screen
     else if(pos.y < 0 || pos.y + pos.z > height) {
        acc.y *= -1;
     }
     
     pos.x += acc.x;
     pos.y += acc.y;
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


void drawRect() {
   fill(rectColour);
    rect(pos.x, pos.y, pos.z, pos.z);
    noStroke();
}


//time: end game when time up
