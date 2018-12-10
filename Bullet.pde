class Bullet extends Floater{
    
  public Bullet(Spaceship theShip){
    myColor = color(255);
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX =  5 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();

  }

    public void setX(int x){
      myCenterX = x;
    }
    
    public int getX(){
      return (int)myCenterX;
    }
    
    public void setY(int y){
      myCenterY = y;
    }
    
    public int getY(){
      return (int)myCenterY;
    }
    
    public void setDirectionX(double x){
      myDirectionX = x;
    }

    public double getDirectionX(){
      return (double)myDirectionX;
    }

    public void setDirectionY(double y){
      myDirectionY = y;
    }

    public double getDirectionY(){
      return (double)myDirectionY;
    }

    public void setPointDirection(int degrees){
      myPointDirection = degrees;
    }

    public double getPointDirection(){
      return (double)myPointDirection;

    }
    
    public void show(){
      fill(myColor);
      stroke(myColor);
      ellipse((float)myCenterX, (float)myCenterY, 5, 5);
     
    }
    //myCenterX = 50 * myDirectionX;
    // myCenterY = 50 * myDirectionY;
    
    public void move(){
     //myCenterX = 50 * myDirectionX;
     //myCenterY = 50 * myDirectionY;
     myCenterX += myDirectionX;
     myCenterY += myDirectionY;
     
     if(myCenterX < 0 || myCenterX > 500 || myCenterY < 0 || myCenterY > 500){
      bullets.remove(this); 
     }
    }
    

}
