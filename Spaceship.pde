class Spaceship extends Floater  
{   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if (key == 'w'){
      ellipse(-8, 0, 8, 8);
      ellipse(-10, 0, 8, 8);
      ellipse(-12, 0, 8, 8);
    }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  public Spaceship(){
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;  
    xCorners[1] = -8;
    yCorners[1] = 8;    
    xCorners[2] = 16;
    yCorners[2] = 0; 
    myColor = (250);
    myCenterX = 500;
    myCenterY = 500;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0; 
  }
  public void setX(int x) {myCenterX = x;} 
  public int getX() {return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY() {return (int)myCenterY;}  
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}   
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees) {myPointDirection = degrees;}   
  public double getPointDirection() {return myPointDirection;} 

  public void hyperspace(){
    bob.deaccelerate(0);
    bob.setX((int)(Math.random()*1000)); 
    bob.setY((int)(Math.random()*1000));
    bob.setPointDirection((int)(Math.random()*360));
  }
  
  
}
