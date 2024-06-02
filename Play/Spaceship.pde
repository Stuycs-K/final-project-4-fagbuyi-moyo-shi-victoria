
boolean shooting;


public class Spaceship
{
   int health;

 int speed;
  PImage imageS;
 PVector position;
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
    return bull;
  }
  
  public void loseHealth(int dam)
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
  
  public PVector getPos() // only putting now so bullet can get postion of um spacehip
  {
    return position;
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
