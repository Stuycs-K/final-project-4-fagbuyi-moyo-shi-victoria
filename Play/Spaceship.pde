
boolean shooting;


public class Spaceship
{
   int health;

 int speed;
  PImage imageS;
 PVector position, velocity;
 ArrayList<Bullet> bullets;
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
    bullets = new ArrayList<Bullet>();

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
  
   public void shoot()
  {
    //only callled when q is pressed
    Bullet bull = new Bullet(position);
    bullets.add(bull);
  }
  
  public void loseHealth(int dam) //fix
  {
    health -= dam;
    if (health < 0)
    {
      health = 0;
    }
  }
  
  public int getHealth()
  {
    return health;
  }
  
  public PVector getPos()
  {
    return position;
  }
  
  public int[] getDims()
  {
    int[] pop = new int[]{imageS.width, imageS.height};
    return pop;
  }
  
  public ArrayList<Bullet> getAmmo()
  {
    return bullets;
  }
  
  void display()
  {

    //color c = color(0, 0, 0);
   // fill(0);
    //circle(position.x, position.y, 100);

    color c = color(0, 0, 0);
    fill(0);
    circle(position.x, position.y, 100);

  }
  
}
