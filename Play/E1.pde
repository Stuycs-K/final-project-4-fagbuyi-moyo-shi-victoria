 private PImage png;
 private PVector position1;
public class E1 extends Enemy{

  
  public E1()
    {
   png=loadImage("image.png");
    health = 100; // assuming 100 is max health
    position1 = new PVector(0 + 100, 0 + 100);
    velocity=new PVector(0,0);
   // circle(position.x, position.y, 100);
     
  }
  
  void display(){
    image(png,position1.x, position1.y);}
  
}
