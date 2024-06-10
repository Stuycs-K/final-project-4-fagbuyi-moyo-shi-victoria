Bullet place;
ArrayList<Bullet> bullets2;
E1 enemy1;
E1 enemy2;
E1 enemy3;
Enemy e =new Enemy();
ArrayList<Enemy> enemies=new ArrayList<Enemy>();
Player player;
int countdown;
Background b;
ArrayList<Background> back=new ArrayList<Background>();
int score;
int wave;
int mode;
boolean waveOver=true;


//we should have a game class so draw and setup and less chunky
void setup()
{
  size(950, 1000);
  player = new Player();
  bullets2 = new ArrayList<Bullet>();
  place = new Bullet(1, new PVector(600, 100));
  int wave=1;
  int mode=0;

  //moving backgroud somewhere yeah
  
 //enemy1 = new E1();
 //enemies.add( new E1(100,100));
  // enemies.add(new E1(400,100));
   //enemies.add(new E1(700,100));
  // enemies.add(new Boss(0,0));

  

  countdown = 600;
  b=new Background();
}

void healthBar(Spaceship player)
{
  PVector loc = player.getPos();
  float health =  player.getHealth();
  stroke(10);
  fill(200);  
  rect(loc.x, loc.y + 180, 100, 15, 6);
  noStroke();
  fill(45, 237, 88);
  rect(loc.x, loc.y + 181, health, 14, 6);
}

void add()
{
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

void menu(String s1,String s2)
{
    fill(242, 240, 242);
    stroke(0);
    rect(width/2- 275, height/2 - 175, 550, 350);
    stroke(255);
    fill(0);
    textSize(64);
    textAlign(CENTER, BOTTOM);
    text(s1, width/2, height/2);
    textAlign(CENTER, TOP);
    text(s2, width/2, height/2);
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
  
else{
  if(mode==0){
  if(enemies.size()==0){
    waveOver=true;
    wave++;}
    
  if (wave==1&&waveOver){
    waveOver=false;
    wave1();
  }
  
    if (wave==2&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave2();
    
  }
      if (wave==3&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave3();
  }
  
    if (wave==4&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave4();
  }
      if (wave==5&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave5();
  }
        if (wave==6&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave6();
  }
  
          if (wave==7&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave7();
  }
       if (wave==8&&waveOver){
    waveOver=true;
    player.bullets.clear();
    mode=1;
    wave=1;
      score=0;
  player.health=100;
  }
  
  }
  else{
    if(enemies.size()==0){
    waveOver=true;
    wave++;}
    
  if (wave==1&&waveOver){
    waveOver=false;
    wave1();
  }
  
    if (wave==2&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave2();
    
  }
      if (wave==3&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave3();
  }
  
    if (wave==4&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave4();
  }
      if (wave==5&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave5();
  }
        if (wave==6&&waveOver){
    waveOver=false;
    player.bullets.clear();
    wave=1;
  }
  
  }

  
  healthBar(player);
  player.move();
  place.allMove(player.getAmmo());
  player.display();
    for (Enemy en : enemies)
    {
     en.move();
      en.display();
      en.direction();
      place.damagePlayer(en.getAmmo(), player);
      place.damageEn(player.getAmmo(), en);
    }
  enemies = e.despawn(enemies);
  if (player.getHealth() == 0)
  {
    gameOver();
    stop();
    
  }

}
  
}
//}

void drawWave(int num){
  int temp=millis();
  while(millis() < temp+2000)
  gameOver();
}

void wave1(){
   enemies.add( new E2(100,100));
   enemies.add(new E2(400,100));
   enemies.add(new E2(700,100));

}
void wave2(){
   enemies.add( new E1(100,100));
   enemies.add(new E1(400,100));
   enemies.add(new E1(700,100));
}
void wave3(){
   enemies.add( new E1(100,0));
   enemies.add(new E1(700,0));
   enemies.add( new E2(100,200));
   enemies.add(new E2(400,200));
   enemies.add(new E2(700,200));
}

void wave4(){
   enemies.add( new E3(100,100));
   //enemies.add(new E3(400,100));
   enemies.add(new E3(700,100));
}

void wave5(){
   enemies.add(new E2(100,0));
   enemies.add( new E2(400,300));
   enemies.add(new E3(400,0));
   enemies.add(new E2(700,0));

}
void wave6(){
   enemies.add(new E3(50,0));
   enemies.add(new E3(600,0));

}

void wave7(){
  enemies.add(new Boss(0,0));
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
  
