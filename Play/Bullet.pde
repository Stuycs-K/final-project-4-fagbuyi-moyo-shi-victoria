
public class Bullet
{
  private int damage;
  private PVector pos;
  private PImage photo;
  boolean alive;
  
  public Bullet(int num,PVector spawnPoint)
  {
    damage = 5;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    if(num==1)
    photo = loadImage("blueBullet.png");
    if(num==2)
    photo = loadImage("redBullet.png");
    photo.resize(80,80);
    alive = true;
  }
    public Bullet(PVector spawnPoint)
  {
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    photo.resize(40, 40);
  }
  
  public Bullet(PVector spawnPoint, int dam)
  {
    damage = dam;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    photo.resize(40, 40);
  }
  
  public void move() //<>// //<>// idk why this is here but ill leave it //<>//
  {
    pos.set(pos.x, pos.y - 5);
    image(photo, pos.x, pos.y, 70, 70);
  }
  
    public void moveEnemy1()
  {
    pos.set(pos.x, pos.y + 5);
    image(photo, pos.x, pos.y, 70, 70);
  }
  
  public void allMove(ArrayList<Bullet> bulls)
  {
    ArrayList<Bullet> live = new ArrayList<Bullet>();
    for (Bullet bull : bulls)
    {
      if (bull.getStatus()) 
      {
        bull.move();
        live.add(bull);
      }
    }
    bulls = live;
    
  }
  

    public void allMove1(ArrayList<Bullet> bulls)
  {
    for (Bullet bull : bulls)
    {
      bull.moveEnemy1();
    }
  }
  

  public void applyDamage(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?

  {
    for (Bullet bull : bulls)
    {
      if (PVector.dist(tar.getPos(), bull.pos) <= 40) // num will cahnge based on eenmy png
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
