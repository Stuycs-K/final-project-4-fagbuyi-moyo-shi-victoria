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
  //PVector loc = player.getPos();
  place = new Bullet(new PVector(600, 100));
  img = loadImage("bullet.jpg");
  //moving backgroud somewhere yeah
  //player = new Spaceship();
  
  player = new Player();
}

void draw()
{
  background(200);
  //player.display();
 // image(imageS,0,0);
 player.move();
 for (Bullet bull : bullets)
 {
   PVector loc = player.getPos();
  image(img, loc.x, loc.y, 40, 40);
 }
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
     if (key== 'q')
  {
    bullets.add(player.shoot());
  }
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
  
void bullets()
{
   for (Bullet bull : bullets)
  {
    bull.move();
    image(img, bull.getPos().x, bull.getPos().y, 40, 40);
    bull.applyDamage(player); //should apply dxdamdge to nearest enemy
    if (bull.getStatus() == false)
    {
      bullets.remove(bull);
    }
  }
}
