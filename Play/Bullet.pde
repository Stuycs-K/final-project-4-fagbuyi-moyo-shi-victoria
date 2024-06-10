
public class Bullet
{
  private int damage;
  private PVector pos;
  private PImage photo;
  boolean alive;
  boolean tracking;
  private PVector spawnLoc;
   private PVector playerLoc;
       PVector temp;
     int factor;
     
  public Bullet(int num,PVector spawnPoint)
  {
    damage = 5;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    tracking=false;
    if(num==1) //<>//
    photo = loadImage("blueBullet.png");
 
    if(num==2)
    photo = loadImage("redBullet.png");
    if(num==3){
    photo = loadImage("redBullet.png"); 
        spawnLoc=spawnPoint; //<>//
    playerLoc=player.position;
    temp=PVector.sub(playerLoc,spawnLoc);
    factor=int(temp.mag()/5);
    tracking =true;
    }
    photo.resize(80,80);
    alive = true;
  } 
 //<>//
  public Bullet(PVector spawnPoint, int dam) //<>//
  { //<>//
    damage = dam;
    pos = new PVector(spawnPoint.x + 80, spawnPoint.y + 10);
    photo = loadImage("bullet.png");
    photo.resize(40, 40);
     alive = true;
  }
  public void move()
  {
    pos.set(pos.x, pos.y - 5);
    image(photo, pos.x, pos.y, 70, 70);
  }
  
    public void moveEnemy()
  {
    if(tracking)
    {

    pos.set(pos.x+(temp.x/factor), pos.y + (temp.y/factor));
     image(photo, pos.x, pos.y, 70, 70);
    }
    else{
    pos.set(pos.x, pos.y + 5);
    image(photo, pos.x, pos.y, 70, 70);
    }
  }
  
  public ArrayList<Bullet> allMove(ArrayList<Bullet> bulls)
  {
    ArrayList<Bullet> live = new ArrayList<Bullet>();
    for (int i = 0; i < bulls.size(); i++)
    {

      Bullet bull = bulls.get(i);
      if (bull.getStatus()&&bull.pos.y>0) 

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
  
    public ArrayList<Bullet> allMoveEnemy(ArrayList<Bullet> bulls)
  {
    ArrayList<Bullet> live = new ArrayList<Bullet>();
    for (int i = 0; i < bulls.size(); i++)
    {
      Bullet bull = bulls.get(i);
      if (bull.getStatus()&&bull.pos.y<height) 

      {
        bull.moveEnemy();
        live.add(bull);
      }
      else
      {
        bulls.remove(bull);
      }
    }
    return live;
  }
  
  
    public void damageEn(ArrayList<Bullet> bulls, Spaceship tar) //shoudlnt have to specify should attack nearsest enemy? /// also change to spaceship<arrayList> once we get more enenimes spawning
  {
    
    for (Bullet bull : bulls)
    {
      int[] dims =  tar.getDims();
      if (dims[0] == 200 && dims[1] == 200)
      {
        if (tar.getPos().x + 25  <= bull.pos.x && abs(tar.getPos().x - bull.pos.x) <= dims[0] - 90 && tar.getPos().y < bull.pos.y && abs(tar.getPos().y -  bull.pos.y) <= dims[1] - 25) // will have to change based on um enenmy size
        {
         tar.loseHealth(damage);
         bull.setStatus(false);
        } 
      }
      else if (dims[0] == 393 && dims[1] == 348)
      {
        if (tar.getPos().x <= bull.pos.x && abs(tar.getPos().x - bull.pos.x) <= dims[0] - 125 && tar.getPos().y < bull.pos.y && abs(tar.getPos().y -  bull.pos.y) <= dims[1] - 120) // will have to change based on um enenmy size
        {
         tar.loseHealth(damage);
         bull.setStatus(false);
        } 
      }
      else
      {
         if (tar.getPos().x  <= bull.pos.x && abs(tar.getPos().x - bull.pos.x) <= 900 && tar.getPos().y < bull.pos.y && abs(tar.getPos().y -  bull.pos.y) <= 305) // will have to change based on um enenmy size
        {
         tar.loseHealth(damage);
         bull.setStatus(false);
        } 
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
      if (corn2.x <= bull.pos.x && corn1.x >= bull.pos.x && corn2.y <= bull.pos.y && corn1.y >= bull.pos.y)
      {
       tar.loseHealth(damage);
       bull.setStatus(false);
      }
    }
  }
  
  
  public boolean getStatus()
  {
    return alive;
  }
  
  public void setStatus(boolean stat)
  {
    alive = stat;
  }
}
