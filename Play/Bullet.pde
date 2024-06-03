
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
  } //<>//
  //  public Bullet(PVector spawnPoint)
  //{
  //  pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
  //  photo = loadImage("bullet.png");
  //  photo.resize(40, 40);
  //}
   //<>//
  public Bullet(PVector spawnPoint, int dam)
  {
    damage = dam;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    photo.resize(40, 40);
     alive = true;
  }
   //<>//
  public void move() //<>// //<>// idk why this is here but ill leave it //<>// //<>//
  {
    pos.set(pos.x, pos.y - 5);
    image(photo, pos.x, pos.y, 70, 70);
  }
  
    public void moveEnemy1()
  {
    pos.set(pos.x, pos.y + 5);
    image(photo, pos.x, pos.y, 70, 70);
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
  
  
    //make senemy g=hitbox smalelr
    public void applyDamage(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy? /// also change to spaceship<arrayList> once we get more enenimes spawning
  {
    for (Bullet bull : bulls)
    {
      int[] dims =  tar.getDims();
     if (abs(tar.getPos().x - bull.pos.x + 80) <= dims[0] && abs(tar.getPos().y -  bull.pos.y + 40) <= dims[1]) // will have to change based on um enenmy size
      {
        //System.out.println("pop2");
       tar.loseHealth(damage);
       bull.setStatus(false);
      }
    }
  }
  
      public void applyDamage2(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy? /// also change to spaceship<arrayList> once we get more enenimes spawning
  {
    for (Bullet bull : bulls)
    {
      int[] dims =  tar.getDims();
     if   (abs(tar.getPos().x - bull.pos.x + 80) <= dims[0] && abs(tar.getPos().y +  bull.pos.y) <= dims[1]) // will have to change based on um enenmy size
      {
        System.out.println("pop");
       tar.loseHealth(damage);
       bull.setStatus(false);
      }
    }
  }

  //public void applyDamage1(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?
  //{
  //  for (Bullet bull : bulls)
  //  {
  //    int[] dims =  tar.getDims();
  //   if (abs(tar.getPos().x - bull.pos.x) <= dims[0] && abs(tar.getPos().y -  bull.pos.y) <= dims[1]) // will have to change based on um enenmy size
  //    {
  //     tar.loseHealth(damage);
  //     bull.setStatus(false);
  //    }
  //  }
  //}

  //public void applyDamage1(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy?
  //{
  //  for (Bullet bull : bulls)
  //  {
  //    int[] hb =  tar.getHitbox();
  //    int[] dims = tar.getDims();
  //    PVector pop = tar.getPos();
  //    if (((pop.x + dims[0] <= bull.pos.x) && (bull.pos.x <= pop.x + dims[0] ))&& ((pop.y + dims[1] <= bull.pos.y) && bull.pos.y <= pop.y + dims[1])); 
  //    {
  //     tar.loseHealth(damage);
  //     bull.setStatus(false);
  //    }
  //    //if (((pop.x + 70 <= bull.pos.x) && (bull.pos.x <= pop.x + 130 ))&& ((pop.y + 25 <= bull.pos.y) && bull.pos.y <= pop.y + 175)); 
  //    //{
  //    // bull.setStatus(false);
  //    // tar.loseHealth(5);
  //    //}
  //  }
  //}
  
  public boolean getStatus() //also might be unneeded
  {
    return alive;
  }
  
  public void setStatus(boolean stat)
  {
    alive = stat;
  }
}
