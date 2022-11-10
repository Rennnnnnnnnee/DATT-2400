//recursion
//code referenced from DATT 2400 Lecture 6, Week 6, Fall 2022 Semester
//code for curveVertex referenced from: https://processing.org/reference/curveVertex_.html

// !!! I am not sure why my gif cannot be exported as animated, instead of frames.
// I've tried Photoshop and Adobe apps as well, but they all export it as frames!
// It seems to work when opened with Safari. 
// Please see the screenshot named 'OpenGif', in this folder. - Renee A.


void setup() {
  
  size(750, 600);
  //size(950, 700); //larger canvas is nicer, but it's too slow :(
  //background(44, 54, 74);
  background(13, 12, 116);
  
}

void draw() {
  
  formRecur(0.8); //draws the recursion values
  frameRate(32);
}


float rt = 0;
float sv ;

//define recursion
void formRecur(float input) {

  //define exit
  if (input < width){
      input = input*1.01;
      noFill();
            
           //assign line attributes 
           sv = sin(rt*0.01);
           
           rotate(radians(input*2));
           rotate(radians(rt+(input*sv)*15));

           //call the curve functions below
           curve1();
             translate(-width/3, height/2);

           curve2();
             translate(width/3, -height/2);

           curve3();
             scale(width/2, height/2);

           curve4();
             scale(width/3, -height/2);

      rt+=2;
      
      formRecur(input);

      //saveFrame("###_out.png");     
  }
}


//specify curves
void curve1() {

       beginShape();
       curveVertex(336, 364);
       curveVertex(560, 398);
       curveVertex(450, 500);
       curveVertex(-150, 500);
       curveVertex(-60, 398);
       curveVertex(-336, 364);
       endShape();
       
       float opacity = (50);
       stroke(100, 255, 150, opacity);
}

void curve2() {
  
       beginShape();
       curveVertex(136, 164);
       curveVertex(160, 198);
       curveVertex(250, 300);
       curveVertex(-350, 400);
       curveVertex(-260, 198);
       curveVertex(-136, 64);
       endShape();
       
       float opacity = (50);
       stroke(200, 155, 50, opacity);
}

void curve3() {
          
       beginShape();
       curveVertex(16, 34);
       curveVertex(300, 608);
       curveVertex(50, 100);
       curveVertex(-300, 200);
       curveVertex(-100, 98);
       curveVertex(-16, 34);
       endShape();
       
       float opacity = (50);
       stroke(200, 105, 150, opacity);
}

void curve4() {

       beginShape();
       curveVertex(304, -206);
       curveVertex(68, -230);
       curveVertex(500, -350);
       curveVertex(500, 450);
       curveVertex(98, 300);
       curveVertex(234, 216);
       endShape();

       float opacity = (50);
       stroke(40, 105, 150, opacity);
  
}
