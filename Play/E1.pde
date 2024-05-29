
public class E1 extends Enemy{

  
  public E1()
    {
      super();
   imageS=loadImage("image.png");
    health = 100; // assuming 100 is max health
    position = new PVector(0 + 100, 0 + 100);
    velocity=new PVector(0,0);
   // circle(position.x, position.y, 100);
     
  }
  
  void display(){
    image(imageS,position.x, position.y);}
    
    void move(){
      int moving=0;
      int temp=1;
       if(frameCount % 20 ==0){
           temp=int(random(0,4));}
    
     //   while(frameCount<frameCount+120){
         //for(int i=0;i<200;i++){
        if(temp==0)
        position.x-=10;
         if(temp==1)
        position.x+=10;
      if(temp==2)
        position.y-=10;
        if(temp==3)
        position.y+=10;
     image(imageS,position.x, position.y);
   
     // }}
                 
    }
  
}
