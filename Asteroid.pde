class Asteroid extends Floater
{
  private int myRotationSpeed;
  
  public Asteroid(){
    myRotationSpeed = (int)(Math.random()*11)-5;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = 15;  
    xCorners[1] = 15;
    yCorners[1] = 30;    
    xCorners[2] = 45;
    yCorners[2] = 15; 
    xCorners[3] = 51;
    yCorners[3] = -30;
    xCorners[4] = 15;
    yCorners[4] = -45;
    xCorners[5] = -21;
    yCorners[5] = -21;
    myColor = color(116, 121, 116);
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myDirectionX = 5;
    myDirectionY = 5;
    myPointDirection = 5; 
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
  public void move(){
    myPointDirection += myRotationSpeed;   
    myCenterX += 1;
    myCenterY += 1;
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
 
  
}
