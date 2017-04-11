class Penguin {
  // Location of the penguin on the output window (variables)
  float x;
  float y;
  
  // Variables for the movePenguin function
  float xspeed;
  float yspeed;
  
  /*----------------------------------------------------------------*/
  
  // Constructor
  Penguin() {
    x = width/2;
    y = height/2;
  }

  /*----------------------------------------------------------------*/
  
  // Functions go below here
  
  void drawPenguin(float tempBlk, float tempWhite) {
    
    noStroke();
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
    ellipse(x+18.5, y-112, 10, 10);
    ellipse(x-18.5, y-112, 10, 10);
  }

  void movePenguin() {
   // TODO: add the current values of the x and y 'speed' variables to the x- and y-coordinates variables 
   x += xspeed;
   y += yspeed;
  }
  
  void addMotion() {
    //TODO: Keypressed actions, add functionality to move the object according to which arrow key is pressed
    // Add keyPressed inside here
    if(keyPressed == true) {
      if(keyCode == UP)
      {
      //start moving up
        yspeed = -1;
      } else {
        yspeed = 0;
      }
      
      
      if(keyCode == LEFT)
      {
      //start moving left
        xspeed = -1;
      } else {
        xspeed = 0;
      }
      
      if(keyCode == DOWN)
      {
      //start moving down
        yspeed = 1;
      } else {
        yspeed = 0;
      }
      
      if(keyCode == RIGHT) 
      {
        //start moving right
        xspeed = 1;
      } else {
        xspeed = 0;
      }
    }
   
  }
  
  void constrainObj() {
    //TODO: use the constrain() function to limit both the x- and y-coordinates within the boundaries of the output window so that the object never exits the window
    x = constrain(x, 150, 525);
    y = constrain(y, 150, 525);
  }
 
}