Spaceship bob = new Spaceship();
public void setup() 
{
  size(1000, 1000);
  
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();

}
public void keyPressed() {
  if(key == 'w'){
    bob.setDirectionX(.6);
    bob.setDirectionY(-.6);
    System.out.println("presses W");
  }
  if(key == 'a'){
    bob.setPointDirection(5);
    System.out.println("presses A");
  }
  if(key == 'd'){
    bob.setPointDirection(-5);
    System.out.println("presses D");
  }


}
