Spaceship ship = new Spaceship();
Stars[] stars = new Stars [500];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int bulletNo = 0;

public void setup() 
{
  size(500, 500);
   
   for (int i = 0; i< stars.length; i++){
   stars[i] = new Stars(((int)(Math.random()*500)), ((int)(Math.random()*500)));
  }
  
    for (int i = 0; i< 20; i++){
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
  
  for(int i = 0; i < bullets.size(); i++){
   bullets.get(i).show();
   bullets.get(i).move();
  }

  for (int j = 0; j < asteroids.size(); j++){
  for (int i = 0; i < bullets.size(); i++){
   if(dist(bullets.get(i).getX(), bullets.get(i).getY(), asteroids.get(j).getX(), asteroids.get(j).getY()) <= 6){
    asteroids.remove(j);
    j--;
    bullets.remove(i);
    i--;
       break;
   }
  }
 }
  ship.show();
  ship.move();
  distCheck();

}

public void keyPressed(){
  if (key == 'w'){
    ship.accelerate(0.1);
  }

  if (key == 's'){
    ship.accelerate(-0.1);
  }

  if(key == 'a'){
    ship.turn(-5);
  }

  if(key == 'd'){
  ship.turn(5);
  }

  if(key == 'h'){
    hyperspace();
  }
  
  if(key == ' '){
    bullets.add(new Bullet(ship));
  }
}

  public void hyperspace(){
  ship.setDirectionX(0);
  ship.setDirectionY(0);
  ship.setX((int)(Math.random()*500+1));
  ship.setY((int)(Math.random()*500+1));
  ship.setPointDirection((int)(Math.random()*360));

  }
  
  public void distCheck(){
     float shipX = ship.getX();
     float shipY = ship.getY();

    for (int i = 0; i< asteroids.size(); i++){ 
      float asteroidX = asteroids.get(i).getX();
      float asteroidY = asteroids.get(i).getY();
     
      if(dist(shipX, shipY, asteroidX, asteroidY) < 20){
         asteroids.remove(i); 
      }    
    }
  }
