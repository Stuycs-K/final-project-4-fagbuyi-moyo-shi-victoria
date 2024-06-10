public class E3 extends Enemy
{
      int temp=int(random(0,4));
    int time=millis();
int time2=millis();
int time3=millis();
int xSpawn, ySpawn;
      Bullet place = new Bullet(2,new PVector(600, 100));
  public E3()
    {

      super();
       bullets=new ArrayList<Bullet>();
   imageS=loadImage("e3.png");
    health = 1; // assuming 100 is max health
    position = new PVector(0 + 300, 0 + 100);
    xSpawn=300;
    ySpawn=100;

     
  }
    public E3(int x,int y)
    {
      super();
   imageS=loadImage("e3.png");
    health = 1; // assuming 100 is max health
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
           //bullets.add(new Bullet(new PVector(position.x,position.y+200)));
    time = millis();
  }
    else if (millis() > time2 + 2000)
  {
         // bullets.add(new Bullet(2,new PVector(position.x+110,position.y+200)));
       // bullets.add(new Bullet(2,new PVector(position.x+160,position.y+200)));
    time2 = millis();
  }
      else if (millis() > time3 + 1000)
  {
            //bullets.add(new Bullet(3,new PVector(position.x-55,position.y+200)));
    time3 = millis();
  }

}

  
  void display(){
    image(imageS,position.x, position.y,350,275);}
    
    
    
    void move(){

      int moving=0;
      //int temp=1;
      // if(frameCount % 20 ==0)
// int temp=int(random(0,4));
    
     //   while(frameCount<frameCount+120){
         //for(int i=0;i<200;i++){
        if(temp==0)
        position.x-=2;
         if(temp==1)
        position.x+=2;
      if(temp==2)
        position.y-=2;
        if(temp==3)
        position.y+=2;
     image(imageS,position.x, position.y,350,275);


   this.bullets = place.allMove1(this.bullets);
     // }}
                 

    }
}
