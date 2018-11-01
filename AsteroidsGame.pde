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
//input pressing direction + accelerating from apcs
//stop accelerating

public void keyPressed() {
  if(key == 'w'){
    bob.accelerate(.4);
    
    System.out.println("pressed W");
  }
  if(key == 'a'){
    bob.turn(-10);
    System.out.println("pressed A");
  }
  if(key == 'd'){
    bob.turn(10);
    System.out.println("pressed D");
  }
  if(key == 'e'){
    bob.deaccelerate(.4);
    bob.hyperspace();
    System.out.println("pressed E");
  }


}
