public class Background
{
  PVector pos;
  int size;
  PShape des;
  
  public Background()
  {
    int x = 5 + (int) random(0, width - 50);
    int y = 5 + (int) random(0, height - 50);
    size = (int)random(12);
    pos = new PVector(x, y);
    des = createShape(RECT, x, y , size, size/3);
  }
}
