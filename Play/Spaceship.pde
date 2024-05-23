private int health;
private PVector position;

public class Spaceship
{
  public Spaceship()
  {
    health = 100; // assuming 100 is max health
    position = new PVector(0 + 100, 0 + 100);
  }
  
  public void move()
  {
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
