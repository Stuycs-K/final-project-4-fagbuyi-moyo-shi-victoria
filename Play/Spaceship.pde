
boolean shooting;


public class Spaceship
{
   float health;

 int speed;
  PImage imageS;
 PVector position, velocity;
 ///
 ArrayList<Bullet> bullets;
 int[] Hitbox;

  public Spaceship()
  {
    /*
    imageS=loadImage("file.png");
    health = 100; // assuming 100 is max health
    position = new PVector(0 + 100, 0 + 100);
    velocity=new PVector(0,0);
    circle(position.x, position.y, 100);
     //image(imageS,position.x, position.y);
     */

    health = 100; // assuming 100 is max health
    position = new PVector(0 + 100, 0 + 100);
    shooting = false;
    ///
    bullets = new ArrayList<Bullet>();
    Hitbox = new int[4];

  }
  
  public Spaceship(int x, int y)
  {
    health = 100; // assuming 100 is max health
    position = new PVector(x, y);
  }
  
  
  public void move()
  {
    /*if(aPressed==true)
      position.x-=10;
     if(dPressed==true)
      position.x+=10;
     if(wPressed==true)
      position.y-=10;
      if(sPressed==true)
      position.y+=10;
     // position.x+=velocity.x;
      //circle(position.x, position.y, 100);
           image(imageS,position.x, position.y);
      */
  }
  
   public Bullet shoot()
  {
    //only callled when q is pressed
    Bullet bull = new Bullet(1,position);
    //bullets.add(bull);
    return bull;
  }
  
  public void loseHealth(float dam) //fix
  {
    health -= dam;
    if (health < 0)
    {
      health = 0;
    }
  }
  
  public float getHealth()
  {
    return health;
  }
  
  public PVector getPos()
  {
    return position;
  }
  
  ///
  
  public int[] getDims()
  {
    int[] pop = new int[]{imageS.width, imageS.height};
    return pop;
  }
  
  public ArrayList<Bullet> getAmmo()
  {
    return bullets;
  }
  
  public void setAmmo(ArrayList<Bullet> bulls)
  {
    bulls =  bullets;
  }
  
  public int[] getHitbox()
  {
    return Hitbox;
  }
  
  //public void showHb()
  //{
  //  rect(position.x + imageS, position.y, Hitbox[0], Hitbox[1]);
  //}
  
  void display()
  {

    //color c = color(0, 0, 0);
   // fill(0);
    //circle(position.x, position.y, 100);

    color c = color(0, 0, 0);
    fill(0);
    //circle(position.x, position.y, 100);

  }
  
}
