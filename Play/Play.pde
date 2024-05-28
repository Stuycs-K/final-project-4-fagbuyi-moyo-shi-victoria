Player player;
ArrayList<Spaceship> enemies;
void setup()
{
  
  size(1200, 1200); //can cahnge
  //moving backgroud somewhere yeah
  player = new Player();
}

void draw()
{
  background(200);
  player.display();
 // image(imageS,0,0);
 player.move();
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
