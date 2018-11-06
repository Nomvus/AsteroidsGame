Spaceship bob = new Spaceship();
Star stars[] = new Star[1000];
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;

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
  if(wIsPressed == true && dIsPressed == true){
    bob.accelerate(.25);
    bob.turn(5);
  }
  if(wIsPressed == true && aIsPressed == true){
    bob.accelerate(.25);
    bob.turn(-5);
  }

}



//input elses maybe turning and accelerating is too sensitive when pressing both.



public void keyPressed() {
  if(key == 'w'){
    bob.accelerate(.5);
    wIsPressed = true;
    System.out.println("pressed W");
  } 
  if(key == 'a'){
    bob.turn(-10);
    aIsPressed = true;
    System.out.println("pressed A");
  }
  if(key == 'd'){
    bob.turn(10);
    dIsPressed = true;
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

  void keyReleased(){
    if (key == 'w'){
      wIsPressed = false;
    } else
    if (key == 'a'){
      aIsPressed = false;
    } else
    if (key == 'd'){
      dIsPressed = false;
    } 
}
