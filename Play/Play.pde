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

  //moving backgroud somewhere yeah
  
 //enemy1 = new E1();
 //enemies.add( new E1(100,100));
  // enemies.add(new E1(400,100));
   //enemies.add(new E1(700,100));
  // enemies.add(new Boss(0,0));

  



  b=new Background();
}


void draw()
{

  background(0);
  fill(255);
  add();
  for (Background ba : back){
  ba.move();
  }
  


  if (millis() < 2000) 
    menu("Wave 1","");
  

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

    //bullets.add(player.shoot());
   // if (key == 'j')player.loseHealth(100);
      if (key== 'r')
    enemies.clear();

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
  
