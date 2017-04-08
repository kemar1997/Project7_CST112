class Penguin {
  // Location of the penguin on the output window (variables)
  float x;
  float y;
  
  /*----------------------------------------------------------------*/
  
  // Constructor
  Penguin() {
    x = width/2;
    y = height/2;
  }

  /*----------------------------------------------------------------*/
  
  // Functions go below here
  
  void drawPenguin() {
    // Penguin body
    fill(0);
    ellipse(x, y, 120, 164);
    fill (216, 136, 32);
    ellipse(x, y, 96, 131.2);
    
    // Feet
    fill(0);
    ellipse(x-30, y+75, 50, 34);
    fill(0);
    ellipse(x+30, y+75, 50, 34);
  }

}