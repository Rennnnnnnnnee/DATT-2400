//define platforms, which Ninja Square jumps off of :)
int x, y;
int x1, y1;
int x2, y2;
int x3, y3;
int x4, y4;

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
