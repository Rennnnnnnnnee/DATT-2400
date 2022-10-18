
void setup(){
  size(650,650);
  //background(0);
  background(55, 92, 170);
  
}

float t;

void draw() {
   
  translate(width/2, height/2);
  
  //bezier trigonometric loops:
       //'float wave' code learned from: https://www.youtube.com/watch?v=Th7m7QEeUbI
  for (int i = 0; i < 100; i++); {
    
    float c = map(sin(radians(frameCount)), -1, 1, 0, 255);
    noFill();
    stroke(219, c, 55);
        
    //horizontal forms:
    float wave1 = map(cos(radians(frameCount * 0.5)), -1, 1, -200, 200);
    float wave2 = map(cos(radians(frameCount)), -1, 1, -200, 200);
    bezier(wave1, wave2, 410, 0, 440, 0, 240, 100);
    
    float wave3 = map(sin(radians(frameCount * 0.5)), -1, 1, -200, 200);
    float wave4 = map(sin(radians(frameCount)), -1, 1, -200, 200);
    bezier(wave3, wave4, 410, 0, 440, 0, 240, 100);    
  } 
  
  
  //rotating 'stars', upperleft: https://processing.org/examples/star.html
  pushMatrix();
  translate(width*0.2, height*0.2);
  rotate(frameCount * 0.8);
  star(-500, 600, -300, 100, 4); 
  popMatrix();
    
    
  //scattered dots, bottomright: https://processing.org/examples/doublerandom.html
  float rand = 0;
  int totalPts = 300;
  float steps = totalPts + 1;
  
  for  (int i = 1; i < steps; i++) {    
    point( (width/steps) * i, (height/2) + random(-rand, rand) );
    rand += random(-5, 5);
  }

  //scattered dots: http://learningprocessing.com/examples/chp04/example-04-07-randompainting
  float r;
  float g;
  float b;
  float x;
  float y;

  r = random(390);
  g = random(250);
  b = random(255);
  x = random(-width, width);
  y = random(-height, height);
  
      // Use values to random and small rectangle particles
      fill(r, g, b);
      noStroke();
      rect(x, y, 2, 3);
  

  saveFrame("###_A1.png");
  //println(frameCount);
}


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx =x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
} 


//random particles/lines using sine: https://www.youtube.com/watch?v=LaarVR1AOvs
  float x(float t) {
    return t;
  }
  float y(float t) {
    return sin(t*5) * 500 ;
  }
  
  
