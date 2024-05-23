private int health;
private PVector position;

public Spaceship()
{
  health = 100; // assuming 100 is max health
  position = new PVector(width, height);
}

void display()
{
  color c = color(0, 0, 0);
  fill(0);
  circle(position.x, position.y, 100);
}

//public static void move()
//{
//}

//public static void shoot()
//{
//}

//public static void loseHealth()
//{
//}

public PVector getPos() // only putting now so bullet can get postion of um spacehip
{
  return position;
}
