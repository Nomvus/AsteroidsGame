class Star //note that this class does NOT extend Floater
{
  double myX, myY;
  int myColor;
  Star(){
    myX = (Math.random()*1000);
    myY = (Math.random()*1000);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, 8, 8);
  }
  
}
