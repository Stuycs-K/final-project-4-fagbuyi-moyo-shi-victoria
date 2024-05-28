
public class Bullet
{
  private int damage;
  private PVector pos;
  private PImage photo;
  boolean alive;
  
  public Bullet(PVector spawnPoint)
  {
    damage = 5;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    //photo.resize(40, 40);
    alive = true;
  }
  
  public Bullet(PVector spawnPoint, int dam)
  {
    damage = dam;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    photo.resize(40, 40);
  }
  
  public void move() //<>// //<>//
  {
    pos.set(pos.x, pos.y - 5);
    image(photo, pos.x, pos.y, 40, 40);
  }
  
  public void allMove(ArrayList<Bullet> bulls)
  {
    for (Bullet bull : bulls)
    {
      if (bull.getStatus()) bull.move();
      else
      {
        bullets.remove(bull);
      }
    }
  }
  
  public void applyDamage(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?
  {
    for (Bullet bull : bulls)
    {
      if (PVector.dist(tar.getPos(), bull.pos) <= 20)
     {
       tar.loseHealth(damage);
       bull.setStatus(false);
     }
    }
  }
  
  public boolean getStatus() //also might be unneeded
  {
    return alive;
  }
  
  public void setStatus(boolean stat)
  {
    alive = stat;
  }
  
  //public PVector getPos() //might be unneeded
  //{
  //  return pos;
  //}
}
