
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
  
  public void move() //<>//
  {
    pos.set(pos.x, pos.y - 5);
    image(photo, pos.x, pos.y, 40, 40);
  }
  
    public void moveEnemy1()
  {
    pos.set(pos.x, pos.y + 5);
    image(photo, pos.x, pos.y, 40, 40);
  }
  
  public void allMove(ArrayList<Bullet> bulls)
  {
    for (Bullet bull : bulls)
    {
      bull.move();
    }
  }
  
    public void allMove1(ArrayList<Bullet> bulls)
  {
    for (Bullet bull : bulls)
    {
      bull.moveEnemy1();
    }
  }
  
  public void applyDamage(Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?
  {
   if (PVector.dist(tar.getPos(), pos) <= 20)
   {
     tar.loseHealth(damage);
     alive = false;
   }
  }
  
  public boolean getStatus() //also might be unneeded
  {
    return alive;
  }
  
  //public PVector getPos() //might be unneeded
  //{
  //  return pos;
  //}
}
