Player player;
E1 enemy1;
int time=millis();
ArrayList<Spaceship> enemies;
  int temp=1;

void setup()
{
  
  size(1200, 1200); //can cahnge
  //moving backgroud somewhere yeah
  player = new Player();
  enemy1 =new E1();
}
void direction(){
  if (millis() > time + 500)
  {
    temp=int(random(0,4));
    time = millis();
  }
}
void draw()
{

  background(200);
  direction();
   enemy1.display();
 player.display();

 // image(imageS,0,0);
 player.move();
 enemy1.move(temp);


//d enemy1.display();
}

  void keyPressed(){
    if(key=='w')
      wPressed=true;
   else if(key=='a')
       aPressed=true;
  else if(key=='s')
      sPressed=true;
     else if(key=='d')
       dPressed=true;
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
