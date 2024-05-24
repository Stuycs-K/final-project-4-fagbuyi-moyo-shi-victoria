private int health;
private int speed;
 private PImage imageS;
private PVector position, velocity;
boolean wPressed, aPressed, sPressed, dPressed;

public class Spaceship
{
  public Spaceship()
  {
   // imageS=loadImage("Valkyrie.png");
    health = 100; // assuming 100 is max health
    position = new PVector(0 + 100, 0 + 100);
  }
  

  
  
  
  public void move()
  {
    if(aPressed==true)
      velocity.x=-speed;
      
      position.x+=velocity.x;
      circle(position.x, position.y, 100);
      
  }
  
  public void shoot()
  {
  }
  
  public void loseHealth()
  {
  }
  
  public PVector getPos() // only putting now so bullet can get postion of um spacehip
  {
    return position;
  }
  
  void display()
  {
    color c = color(0, 0, 0);
    fill(0);
    circle(position.x, position.y, 100);
  }
  
}
