int time=millis();
int time2=millis();


public class E1 extends Enemy
{

  int temp=1;
  Bullet place = new Bullet(new PVector(600, 100));
  
  public E1()
    {
      super();
      imageS=loadImage("image.png");
      health = 10; // assuming 100 is max health
      position = new PVector(0 + 300, 0 + 100);
      velocity=new PVector(0,0);
      bullets = new ArrayList<Bullet>();
  }
  
  void direction()
  {
     if(position.x<=0){
    temp=1;
    time = millis();}
    else if(position.x>=width-100){
    temp=0;
        time = millis();}
    else if(position.y<=0){
    temp=3;
        time = millis();}
    else if(position.y>=height/2){
    temp=2;
    time = millis();}
  else if (millis() > time + 1000)
  {
    temp=int(random(0,4));
           //bullets.add(new Bullet(new PVector(position.x,position.y+200)));
    time = millis();
  }
    else if (millis() > time2 + 500)
  {
           bullets.add(new Bullet(new PVector(position.x,position.y+200)));
    time2 = millis();
  }

}

  
  void display(){
    image(imageS,position.x, position.y);}
    
    void move(){

      int moving=0;
      //int temp=1;
      // if(frameCount % 20 ==0)
// int temp=int(random(0,4));
    
     //   while(frameCount<frameCount+120){
         //for(int i=0;i<200;i++){
        if(temp==0)
        position.x-=5;
         if(temp==1)
        position.x+=5;
      if(temp==2)
        position.y-=5;
        if(temp==3)
        position.y+=5;
     image(imageS,position.x, position.y);


   bullets = place.allMove1(bullets);
     // }}
                 
    }
    
    //public ArrayList<Bullet> getAmmo()
    //{
    //  return bullets;
    //}
    
    //public void setAmmo(ArrayList<Bullet> pop)
    //{
    //  bullets = pop;
    //}
  
}
