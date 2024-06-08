
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
  } //<>// //<>// //<>//
  //  public Bullet(PVector spawnPoint)
  //{
  //  pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
  //  photo = loadImage("bullet.png");
  //  photo.resize(40, 40);
  //}
   //<>// //<>// //<>//
  public Bullet(PVector spawnPoint, int dam)
  {
    damage = dam;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    photo.resize(40, 40);
     alive = true;
  }
   //<>// //<>//
   //<>// //<>// //<>//
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
    for (int i = 0; i < bulls.size(); i++)
    {
      Bullet bull = bulls.get(i);
      if (bull.getStatus()) 
      {
        bull.move();
        live.add(bull);
      }
      else
      {
        bulls.remove(bull);
      }
    }
    return live;
  }
  
    public ArrayList<Bullet> allMove1(ArrayList<Bullet> bulls)
  {
    ArrayList<Bullet> live = new ArrayList<Bullet>();
    for (int i = 0; i < bulls.size(); i++)
    {
      Bullet bull = bulls.get(i);
      if (bull.getStatus()) 
      {
        bull.moveEnemy1();
        live.add(bull);
      }
      else
      {
        bulls.remove(bull);
      }
    }
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
  
      public void damagePlayer(ArrayList<Bullet> bulls, Player tar) //shoudlnt have to specify should attack nearsest enemy? /// also change to spaceship<arrayList> once we get more enenimes spawning
  {
        for (Bullet bull : bulls)
    {
      PVector pop = tar.getPos();
      PVector corn1 = new PVector(pop.x + 110 - 32, pop.y + 83 - 32);
      PVector corn2 = new PVector(pop.x + 92 - 30, pop.y + 65 - 30);
      //fill(227, 25, 25);
      //rectMode(CORNERS);
      //rect(corn1.x, corn1.y, corn2.x, corn2.y);
      //rectMode(CORNER);
      if (corn2.x <= bull.pos.x && corn1.x >= bull.pos.x && corn2.y <= bull.pos.y && corn1.y >= bull.pos.y)
      {
       tar.loseHealth(damage);
       bull.setStatus(false);
      }
    }
  }
  
      public void applyDamageEn(ArrayList<Bullet> bulls, Enemy tar) //shoudlnt have to specify should attack nearsest enemy? /// also change to spaceship<arrayList> once we get more enenimes spawning
  {
    for (Bullet bull : bulls)
    {
      int[] dims =  tar.getDims();
      PVector pop = tar.getPos();
      PVector corn1 = new PVector(pop.x + 27, pop.y + 59);
      PVector corn2 = new PVector(pop.x + 173, pop.y + 252);
      //fill(227, 25, 25);
      //rectMode(CORNERS);
      //rect(corn1.x, corn1.y, corn2.x, corn2.y);
      //rectMode(CORNER);
     //if (pop.x + 27 <= bull.pos.x && pop.x + 173 >= bull.pos.x && pop.y + 252 <= bull.pos.y && pop.y + 59 >= bull.pos.y)
     if (bull.pos.x <= pop.x + 150 && bull.pos.y <= pop.y + 180 && bull.pos.y <= pop.y)
      {
       tar.loseHealth(damage);
       bull.setStatus(false);
      }
    }
  }
  


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
  public void setDam(int a)
  {
    damage = a;
  }
}
