boolean wPressed, aPressed, sPressed, dPressed;
public class Player extends Spaceship{
  
  
  public Player()
  {
    imageS=loadImage("file.png");
    health = 100; // assuming 100 is max health
    position = new PVector(0 + 100, 0 + 100);
    velocity=new PVector(0,0);
    circle(position.x, position.y, 100);
     //image(imageS,position.x, position.y);
  }
  
  
   public void move()
  {
    if(aPressed==true)
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
      
  }
  
  public Bullet shoot()
  {
    return super.shoot();
  }
}