Bullet place;
ArrayList<Bullet> bullets;
E1 enemy1;
ArrayList<Spaceship> enemies;
Player player;

void setup()
{

  size(1200, 1200);
  bullets = new ArrayList<Bullet>();
  place = new Bullet(new PVector(600, 100));
  //moving backgroud somewhere yeah
  player = new Player();
  enemy1 = new E1();
}

void healthBar(Player player)
{
  PVector loc = player.getPos();
  int health =  player.getHealth();
  stroke(10);
  fill(200);  
  rect(loc.x, loc.y + 180, 100, 15, 6);
  noStroke();
  fill(45, 237, 88);
  rect(loc.x, loc.y + 181, health, 14, 6);
}

void draw()
{
  background(200);
  enemy1.display();
  healthBar(player);
  player.move();
  enemy1.move();
  place.allMove(bullets);
  place.applyDamage(bullets, player);
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
    if (key == 'j') player.loseHealth(5);
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
  
