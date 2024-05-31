
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
  
  public void move() //<>// //<>// idk why this is here but ill leave it //<>// //<>//
  {
    pos.set(pos.x, pos.y - 5);
    image(photo, pos.x, pos.y, 40, 40);
  }
  
    public void moveEnemy1()
  {
    pos.set(pos.x, pos.y + 5);
    image(photo, pos.x, pos.y, 40, 40);
  }
  
  public ArrayList<Bullet> allMove(ArrayList<Bullet> bulls)
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
    return live;
  }
  
    public ArrayList<Bullet> allMove1(ArrayList<Bullet> bulls)
  {
    ArrayList<Bullet> live = new ArrayList<Bullet>();
    for (Bullet bull : bulls)
    {
      if (bull.getStatus()) 
      {
        bull.moveEnemy1();
        live.add(bull);
      }
    }
    //this.setAmmo(live);
    return live;
  }
  

  public void applyDamage(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?
  {
    for (Bullet bull : bulls)
    {
      int[] dims =  tar.getDims();
     if (abs(tar.getPos().x - bull.pos.x) <= dims[0] && abs(tar.getPos().y -  bull.pos.y) <= dims[1])
      {
       bull.setStatus(false);
       tar.loseHealth(damage);
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
  
   //public void setAmmo(ArrayList<Bullet> pop)
   // {
   //   bullets = pop;
   // }
}
