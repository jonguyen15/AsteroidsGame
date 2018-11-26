Spaceship ship = new Spaceship();
Stars[] stars = new Stars [500];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup() 
{
  background(0);
  size(850,850);
     for (int i = 0; i< stars.length; i++){
   stars[i] = new Stars(((int)(Math.random()*900)), ((int)(Math.random()*900)));
  }
     for (int i = 0; i< 7; i++){
     asteroids.add(new Asteroid());
  }
  
}
public void draw() 
{
  
   background(0);
  for (int i = 0; i< stars.length; i++){
   stars[i].show();
  }
    for (int i = 0; i< asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
  ship.show();
  ship.move();
  

}

public void keyPressed()
{
    if(key == 'w')
    {
      ship.accelerate(.5);
    }
    if(key == 's')
    {
      ship.accelerate(-.5);
    }
    if(key =='a')
    {
      ship.turn(-5);
    }
    if(key == 'd')
    {
      ship.turn(5);
    }
    if(key == 'h')
    {
      ship.setDirectionX(0);
      ship.setDirectionY(0);
      ship.setX((int)(Math.random()*800));
      ship.setY((int)(Math.random()*800));
      ship.setPointDirection((int)(Math.random()*360));
   
     
    }
    
}
