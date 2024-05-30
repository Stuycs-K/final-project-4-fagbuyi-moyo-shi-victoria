
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
  
<<<<<<< HEAD
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
      int[] dims =  tar.getDims();
     if (abs(tar.getPos().x - bull.pos.x) <= dims[0] && abs(tar.getPos().y -  bull.pos.y) <= dims[1]) // will have to change based on um enenmy size
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
