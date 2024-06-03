public class Background
{
  PVector pos;
  int size;
  PShape des;
  
  public Background()
  /*{
    int x = 5 + (int) random(0, width - 50);
    int y = 5 + (int) random(0, height - 50);
    size = (int)random(12);
    pos = new PVector(x, y);
    des = createShape(RECT, x, y , size, size/3);
  }
  */
  {
    pos=new PVector(random(width),0);
    circle(pos.x, pos.y, 5);
    
}

void display(){
  circle(pos.x, pos.y, 10);
}




void move(){
  pos.y+=13;
  circle(pos.x, pos.y, 5);
}
}
