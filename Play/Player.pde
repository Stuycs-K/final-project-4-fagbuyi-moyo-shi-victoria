
boolean wPressed, aPressed, sPressed, dPressed,spacePressed;
    int time=millis();
public class Player extends Spaceship{
//boolean wPressed, aPressed, sPressed, dPressed;  
  
  public Player()
  {
    imageS=loadImage("file.png");
    health = 200; // assuming 100 is max health
    position = new PVector(0 + width/2, 0 + height/2);

    //circle(position.x, position.y, 100);
    ///
    bullets = new ArrayList<Bullet>();
    Hitbox = new int[]{60, 150};
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
    
      if(spacePressed==true&&millis() > time + 200){
      bullets.add(player.shoot());
      time=millis();
      }
      
      if(position.x<=-30)
      position.x+=10;
      if(position.x>=width-170)
      position.x-=10;
      if(position.y<=-30)
      position.y+=10;
       if(position.y>=height-200)
      position.y-=10;
     // position.x+=velocity.x;
      //circle(position.x, position.y, 100);
           image(imageS,position.x, position.y);
      
  }

    void display()
  {
    //color c = color(0, 0, 0);
   // fill(0);
    //circle(position.x, position.y, 100);
   // image(imageS,position.x, position.y);
  }

///
    public void showHb()
  {
    rect(position.x + 70, position.y + 25, Hitbox[0], Hitbox[1]);
  }
  
  
  //public Bullet shoot()
  //{
  //  return super.shoot();
  //}
  
  
  //public int getHealth()
  //{
  //  return super.getHealth();
  //}
  
  //public PVector getPos()
  //{
  //  return super.getPos();
  //}

}
