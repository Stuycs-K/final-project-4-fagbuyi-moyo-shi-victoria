Bullet place;
E1 enemy1;
E1 enemy2;
E1 enemy3;
Enemy e =new Enemy();
Player player;
ArrayList<Enemy> enemies=new ArrayList<Enemy>();
ArrayList<Background> back=new ArrayList<Background>();
Background b;
int score;
int wave;
int mode;
boolean waveOver=true;


void setup()
{
  size(950, 1000);
  player = new Player();
  place = new Bullet(1, new PVector(600, 100));
  int wave=1;
  int mode=0;
  b=new Background();
}


void draw()
{

  background(0);
  fill(255);
  add();
  for (Background ba : back)
  {
  ba.move();
  text(score, 30, 30);
  }
  


  if (millis() < 2000) 
    menu("Space Invaders","Wave 1");
  

  else
  {
    runGame();
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
      if (key== 'r')
    enemies.clear();
    if(key=='1'&&mode!=0&&score>30&&player.health<10)
    {
      player.health+=5;
      score-=30;
    }
    if (key =='2' && score >= 100 && mode != 0)
    {
      enemies = e.massDespawn(enemies);
      score -= 100;
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
      if (key== ' ')
    spacePressed=false;
  }
  
