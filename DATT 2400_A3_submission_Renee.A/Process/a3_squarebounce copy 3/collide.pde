class collision {
    PVector loc;
    PVector vel;
    
    float drawRect;
    
    void update() {
      loc.add(vel);
    }
    
    void checkBoundary(){
      if (loc.x > width-drawRect) {
        loc.x = width-drawRect;
        vel.x *= -1;
      }
      else if (loc.x < drawRect) {
        loc.x = 
      }
      
    }
    
    void checkCollision(){
    }
    
    void platforms() {
      drawPlatform1();
      drawPlatform2();
      drawPlatform3();
      drawPlatform4();
      drawPlatform5();
    }
}
