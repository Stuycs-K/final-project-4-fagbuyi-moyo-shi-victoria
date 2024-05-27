private int damage;
private PVector pos;
private PImage photo;


public class Bullet
{
  public Bullet(PVector spawnPoint)
  {
    damage = 5;
    pos = new PVector(spawnPoint.x + 40, spawnPoint.y + 10);
    photo = loadImage("bullet.jpg");
    photo.resize(40, 40);
  }
  
  public Bullet(PVector spawnPoint, int dam)
  {
    damage = dam;
    pos = new PVector(spawnPoint.x + 40, spawnPoint.y + 10);
    photo = loadImage("bullet.jpg");
    photo.resize(40, 40);
  }
  
  public void move() //<>//
  {
    pos.set(pos.x + 1, pos.y);
    image(photo, pos.x, pos.y);
  }
  
  public void allMove(ArrayList<Bullet> bulls)
  {
    for (Bullet bull : bulls)
    {
      pos.set(pos.x + 1, pos.y);
      image(photo, pos.x, pos.y);
    }
  }
  
  public void applyDamage(Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?
  {
   if (PVector.dist(tar.getPos(), pos) <= 20)
   {
     tar.loseHealth(damage);
   }
  }
 
}
