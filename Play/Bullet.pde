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
    image(photo, pos.x, pos.y);
  }
  
  public void move()
  {
    //put in draw method
    pos.set(pos.x + 1, pos.y);
    image(photo, pos.x, pos.y);
  }
  
  public void applyDamage()
  {
    
  }
 
 //void display()
 //{
 //  color c = color(220, 255, 51);
 //  stroke(0);
 //  fill(c);
 //  ellipse(pos.x, pos.y, 30, 15);
 //}
 
}
