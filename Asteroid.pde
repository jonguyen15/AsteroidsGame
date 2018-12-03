
class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    corners = 5;
    int xC[] = {-11, 7, 13, 6, -11, -5};
    int yC[] = {-8, -8, 0, 10, 8, 0};
    xCorners = xC;
    yCorners = yC;
    myColor = 255;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = (int)(Math.random()*5);
    myDirectionY = (int)(Math.random()*5);
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = 4;
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
    return myDirectionX;
  }
  
  public void setDirectionY(double y){
    myDirectionY = y;
  }
  
  public double getDirectionY(){
    return myDirectionY;
  }
  
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  
  public double getPointDirection(){
    return myPointDirection;
  }
  
  public void move(){
   turn(rotSpeed);
   super.move();
   
  }
}
