Bullet place;
ArrayList<Bullet> bullets;
int countdown;
ArrayList<Spaceship> enemies;
PImage img;
Player player;

void setup()
{

  size(1200, 1200);
  bullets = new ArrayList<Bullet>();
  place = new Bullet(new PVector(600, 100));
  //moving backgroud somewhere yeah
  player = new Player();
}

void draw()
{
  background(200);
 player.move();
 place.allMove(bullets);
}
  void keyPressed()
  {
    if(key=='w')
      wPressed=true;
     else if(key=='a')
       aPressed=true;
    else if(key=='s')
      sPressed=true;
     else if(key=='d')
       dPressed=true;
    if (key== 'q') bullets.add(player.shoot());
  //ad this to relase and maybe maybe a timer for spamming
  }
    
      void keyReleased(){
    if(key=='w')
      wPressed=false;
   else if(key=='a')
       aPressed=false;
  else if(key=='s')
      sPressed=false;
     else if(key=='d')
       dPressed=false;
  }
  
