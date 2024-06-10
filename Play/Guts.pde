public void healthBar(Spaceship player)
{
  PVector loc = player.getPos();
  float health =  player.getHealth();
  stroke(10);
  fill(200);  
  rect(loc.x, loc.y + 180, 100, 15, 6);
  noStroke();
  fill(45, 237, 88);
  rect(loc.x, loc.y + 181, health*10, 14, 6);
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


void add()
{
if(frameCount%5==0){
back.add(new Background());
}
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

void runGame()
{
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
  player.health=10;
  }
  
  }
  else{

    
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
    wave=0;
          }
      if(enemies.size()==0){
    waveOver=true;
    wave++;}
  
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
    healthBar(player);
    gameOver();
    stop();
    
  }

}
  

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
   enemies.add( new E2(100,0));
   enemies.add(new E2(700,0));
   enemies.add( new E3(100,200));
   enemies.add(new E3(400,200));
   enemies.add(new E2(700,200));

}

void wave7(){
  enemies.add(new Boss(0,0));
}
