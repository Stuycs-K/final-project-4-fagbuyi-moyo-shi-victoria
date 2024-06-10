public class Background
{
  PVector pos;
  int size;
  PShape des;
  
  public Background()
  {
    pos=new PVector(random(width),0);
    circle(pos.x, pos.y, 5);
  }

void display()
{
  circle(pos.x, pos.y, 10);
}

void move()
{
  pos.y+=13;
  circle(pos.x, pos.y, 5);
}

}
