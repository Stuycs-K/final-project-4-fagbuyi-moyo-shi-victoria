Bullet place;
ArrayList<Bullet> bullets;
E1 enemy1;
ArrayList<Spaceship> enemies;
Player player;
int countdown;

//we should have a game class so draw and setup and less chunky
void setup()
{

  size(1200, 1200);
  bullets = new ArrayList<Bullet>();
  place = new Bullet(new PVector(600, 100));
  //moving backgroud somewhere yeah
  player = new Player();
  enemy1 = new E1();
  countdown = 600;
}

void bk()
{
  // so live make the stars jiggle, so like dont use random
  //if (countdown == 600)
  //{
    background(200);
     fill(198, 22, 247);
    stroke(15);
    int x = 5;
    int y = 5;
    for (int i = 0; i < 100; i++)
    {
      int size = (int) random(80);
      rect(random(0, width - 50), random(0, height- 50), size, size / 3);
    //}
  }
  //random(12);
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
  //bk();
  countdown--;
  if (countdown == 0) countdown = 600;
  enemy1.display();
  healthBar(player);
  player.move();
  enemy1.move();
  place.allMove(bullets);
  place.applyDamage(bullets, enemy1);
  enemy1.direction();
 player.display();
 // image(imageS,0,0);
//d enemy1.display();
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
  
