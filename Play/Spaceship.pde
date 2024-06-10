
boolean shooting;

public class Spaceship
{
  float health;
  int speed;
  PImage imageS;
  PVector position, velocity;
  ArrayList<Bullet> bullets;

  public Spaceship()
  {
    health = 100;
    position = new PVector(0 + 100, 0 + 100);
    shooting = false;
    bullets = new ArrayList<Bullet>();
  }
  
  public Spaceship(int x, int y)
  {
    health = 100;
    position = new PVector(x, y);
  }
  
  
  public void move()
  {
  }
  
   public Bullet shoot()
  {
    Bullet bull = new Bullet(1,position);
    return bull;
  }
  
  public void loseHealth(float dam)
  {
    health -= dam;
    if (health < 0)
    {
      health = 0;
    }
  }
  
  public float getHealth()
  {
    return health;
  }
  
  public PVector getPos()
  {
    return position;
  }
  
  
  public int[] getDims()
  {
    int[] pop = new int[]{imageS.width, imageS.height};
    return pop;
  }
  
  public ArrayList<Bullet> getAmmo()
  {
    return bullets;
  }
  
  void display()
  {
    color c = color(0, 0, 0);
    fill(0);
    //circle(position.x, position.y, 100);

  }
  
}
