// Project 7
// Kemar Golding
// kkemargolding@gmail.com
// Due Date: April 11, 2016
// Description: TODO

Penguin p;

void settings() {
  size(600, 600);
}

void setup() {
  p = new Penguin();
}

void draw() {
  drawBG();
  p.drawPenguin(0, 255);
  p.movePenguin();
  p.addMotion();
  p.constrainObj();
}

  
void drawBG() {
  for (int i = 0; i< width; i++) {
    stroke(i, i, i);
    line(0,i,width,i);
  }
}