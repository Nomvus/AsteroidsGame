Spaceship bob = new Spaceship();
Star stars[] = new Star[1000];
public void setup() 
{
  size(1000, 1000);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
}
public void draw() 
{
  background(0);

  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();

}
//input pressing direction + accelerating from apcs


public void keyPressed() {
  if(key == 'w'){
    bob.accelerate(.5);
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
  if(key == 's'){
    bob.accelerate(-.5);
    System.out.println("pressed S");
  }
  if(key == 'e'){
    bob.hyperspace();
    System.out.println("pressed E");
  }
  if (key == 'f'){
    bob.deaccelerate(0);
    System.out.println("pressed F");
  }


}
