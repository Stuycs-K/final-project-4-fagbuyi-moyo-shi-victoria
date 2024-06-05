Bullet place;
ArrayList<Bullet> bullets2;
E1 enemy1;
E1 enemy2;
E1 enemy3;
ArrayList<E1> enemies=new ArrayList<E1>();
Player player;
int countdown;
Background b;
ArrayList<Background> back=new ArrayList<Background>();
int score;

//we should have a game class so draw and setup and less chunky
void setup()
{

  size(950, 1000);
  bullets2 = new ArrayList<Bullet>();
  place = new Bullet(1, new PVector(600, 100));
  //moving backgroud somewhere yeah
  player = new Player();
 enemy1 = new E1();
   enemies.add( new E1(100,100));
   enemies.add(new E1(400,100));
   enemies.add(new E1(700,100));
  
  countdown = 600;
  b=new Background();
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

void healthBar(Spaceship player)
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

//public ArrayList<E1> despawn(ArrayList<E1> en)
//    {
//      ArrayList<E1> live =  new ArrayList<E1>();
//      for (E1 ene : en)
//      {
//        if (ene.getHealth() != 0)
//        {
//          live.add(ene);
//        }
//      }
//      return live;
//    }

void add(){
if(frameCount%5==0){
back.add(new Background());
}
}


void gameOver()
{
    fill(242, 240, 242);
    stroke(0);
    rect(width/2- 275, height/2 - 175, 550, 350);
    stroke(255);
    fill(0);
    textSize(64);
    textAlign(CENTER, BOTTOM);
    text("GAME OVER!", width/2, height/2);
    textAlign(CENTER, TOP);
    String s = "YOUR SCORE: " + score;
    text(s, width/2, height/2);
}

void draw()
{

  background(0);
  //bk();
  fill(255);
  add();
  for (Background ba : back){
  ba.move();
  }
  countdown--;
  if (countdown == 0) countdown = 600;
  healthBar(player);
  player.move();
  place.allMove(player.getAmmo());
  player.display();
    for (Enemy en : enemies)
    {
      en.move();
      en.display();
      en.direction();
      place.applyDamage(en.getAmmo(), player);
      place.applyDamage(player.getAmmo(), en);
    }
  enemies = enemy1.despawn(enemies);
  if (player.getHealth() == 0)
  {
    gameOver();
    stop();
    // and then death screen
  }
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
    if (key== ' ')
    spacePressed=true; 
    //bullets.add(player.shoot());
    if (key == 'j')player.loseHealth(100);
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
      if (key== ' ')
    spacePressed=false;
  }
  
