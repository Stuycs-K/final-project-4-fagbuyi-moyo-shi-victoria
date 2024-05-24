private int damage;
private PVector pos;
private PVector test;
private float x, y;

public class Bullet
{
  public Bullet()
  {
    damage = 2;
    test = new PVector(width/ 2, height/2);
    //pos = new PVector(test.x + 40, test.y + 40);
    //System.out.println(pos.x + "  " + pos.y);
  }
  
  public void spawn(PVector pop)
  {
    pos = new PVector(pop.x + 40, pop.y + 10);
    color c = color(220, 255, 51);
    stroke(0);
    fill(c);
    ellipse(pos.x, pos.y, 30, 15);
  }
  
  public void move()
  {
    //put in draw method
    pos.set(pos.x + 1, pos.y);
    ellipse(pos.x, pos.y, 30, 15);

  }
  
  public void applyDamage()
  {
    
  }
 
 //void display2()
 //{
 //  color c = color(220, 255, 51);
 //  stroke(0);
 //  fill(c);
 //  ellipse(pos.x, pos.y, 30, 15);
   
 //}
 
}
