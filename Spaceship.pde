class Spaceship extends Floater  
{   
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
    myDirectionX = 2;
    myDirectionY = 3;
    myPointDirection = 0;
  }
}
