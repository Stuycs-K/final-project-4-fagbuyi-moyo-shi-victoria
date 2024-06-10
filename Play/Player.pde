
boolean wPressed, aPressed, sPressed, dPressed,spacePressed;
    int time=millis();
public class Player extends Spaceship{ 
  
  public Player()
  {
    imageS=loadImage("file.png");
    health = 10; // assuming 100 is max health
    position = new PVector(0 + width/2, 0 + height/2);
    bullets = new ArrayList<Bullet>();
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
           image(imageS,position.x, position.y);
      
  }

 
}
