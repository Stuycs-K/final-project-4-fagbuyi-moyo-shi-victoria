public class E2 extends Enemy
{ int temp=int(random(0,4));
    int time=millis();
int time2=millis();
int xSpawn, ySpawn;
      Bullet place = new Bullet(2,new PVector(600, 100));
  public E2()
    {

      super();
       bullets=new ArrayList<Bullet>();
   imageS=loadImage("e2.png");
<<<<<<< HEAD
    health = 10; // assuming 100 is max health
=======

    health = 10; // assuming 100 is max health

>>>>>>> 73268d03d5b5d668722a164e1b34271368033dde
    position = new PVector(0 + 300, 0 + 100);
    xSpawn=300;
    ySpawn=100;
     
  }
    public E2(int x,int y)
    {
      super();
   imageS=loadImage("e2.png");
<<<<<<< HEAD
    health = 10; // assuming 100 is max health
=======

    health = 10; // assuming 100 is max health

>>>>>>> 73268d03d5b5d668722a164e1b34271368033dde
    position = new PVector(x,y);
        xSpawn=x;
    ySpawn=y;     
  }
  
  
  void direction(){
     if(position.x<=0||position.x<xSpawn-200){
    temp=1;
    time = millis();}
    else if(position.x>=width-100||position.x>xSpawn+200){
    temp=0;
        time = millis();}
    else if(position.y<=0){
    temp=3;
        time = millis();}
    else if(position.y>=height/4){
    temp=2;
    time = millis();}
  else if (millis() > time + 1000)
  {
    temp=int(random(0,4));
    time = millis();
  }
    else if (millis() > time2 + 500)
  {
           bullets.add(new Bullet(2,new PVector(position.x-15,position.y+150)));
    time2 = millis();
  }

}

  
  void display(){
    image(imageS,position.x, position.y);}
    
    
    
    void move(){

      int moving=0;
        if(temp==0)
        position.x-=3;
         if(temp==1)
        position.x+=3;
      if(temp==2)
        position.y-=3;
        if(temp==3)
        position.y+=3;
     image(imageS,position.x, position.y);
   this.bullets = place.allMoveEnemy(this.bullets);
    }
   
}
