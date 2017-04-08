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
  
  void drawPenguin(float tempBlk, float tempWhite) {
    
    strokeWeight(0);
    
    // Penguin body
    fill(tempBlk);
    ellipse(x, y, 120, 164);
    fill (216, 136, 32);
    ellipse(x, y, 96, 131.2);
    
    // Feet  
    fill(tempBlk);
    ellipse(x-30, y+75, 50, 34);
    fill(tempBlk);
    ellipse(x+30, y+75, 50, 34);
    
    // Flippers
    fill(tempBlk);
    triangle(x+47, y-2, x+55, y-34, x+75, y+50);
    fill(tempBlk);
    triangle(x-47, y-2, x-55, y-34, x-75, y+50);
    
    // Head 
    fill(tempBlk);
    ellipse(x, y-105, 70, 70);
    
    // Eyes
    fill(tempWhite);
    ellipse(x+18.5, y-112, 20, 20);
    ellipse(x-18.5, y-112, 20, 20);
    
    // Pupils
    fill(tempBlk);
  }

  void movePenguin() {
   // TODO: add the current values of the x and y 'speed' variables to the x- and y-coordinates variables 
  }
  
  void addMotion() {
    //TODO: Keypressed actions, look back to word document
  }
  
  void constrainObj() {
    //TODO: use the constrain() function to limit both the x- and y-coordinates within the boundaries of the output window so that the object never exits the window 
  }

}