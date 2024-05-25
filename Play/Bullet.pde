private int damage;
private PVector pos;
private PImage photo;


public class Bullet
{
  public Bullet(PVector spawn)
  {
    damage = 2;
    pos = new PVector(spawn.x + 40, spawn.y + 10);
    photo = loadImage("bullet.jpg");
    photo.resize(40, 40);
  }
  
  public void move()
  {
    pos.set(pos.x + 1, pos.y);
    image(photo, pos.x, pos.y);
  }
  
  public void applyDamage()
  {
    
  }
 
}
