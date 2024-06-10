public class Boss extends Enemy
{
      int temp=int(random(0,4));
    int time=millis();
int time2=millis();
int time3=millis();
int xSpawn, ySpawn;
      Bullet place = new Bullet(2,new PVector(600, 100));
  public Boss()
    {

      super();
       bullets=new ArrayList<Bullet>();
   imageS=loadImage("boss.png");
    health = 500; // assuming 100 is max health
    position = new PVector(0 + 300, 0 + 100);
    xSpawn=300;
    ySpawn=100;
    Hitbox =  new int[]{550, 384};
   // image(imageS,position.x, position.y,1000,700);

     
  }
    public Boss(int x,int y)
    {
      super();
   imageS=loadImage("boss.png");
    health = 500; // assuming 100 is max health
    position = new PVector(x,y);

        xSpawn=x;
    ySpawn=y;

     
  }
  
  
  void direction(){

     if (millis() > time2 + 2000)

  {
          bullets.add(new Bullet(2,new PVector(position.x+100,position.y+260)));
        bullets.add(new Bullet(2,new PVector(position.x+135,position.y+260)));
           bullets.add(new Bullet(2,new PVector(position.x+605,position.y+260)));
        bullets.add(new Bullet(2,new PVector(position.x+640,position.y+260)));
        
    time2 = millis();
  }
    if (millis() > time3 + 1000)
  {
            bullets.add(new Bullet(3,new PVector(position.x+197,position.y+310)));
            bullets.add(new Bullet(3,new PVector(position.x+227,position.y+310)));
            bullets.add(new Bullet(3,new PVector(position.x+257,position.y+310)));
            
            bullets.add(new Bullet(3,new PVector(position.x+485,position.y+310)));
            bullets.add(new Bullet(3,new PVector(position.x+515,position.y+310)));
            bullets.add(new Bullet(3,new PVector(position.x+545,position.y+310)));
    time3 = millis();
  }
  

}

  
  void display(){
    image(imageS,25,-150,900,600);
   this.bullets = place.allMove1(this.bullets);}
   
    
    
    void move(){
    }
}
