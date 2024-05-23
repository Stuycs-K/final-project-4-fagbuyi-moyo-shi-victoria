private int health;
private PVector position;

public Spaceship()
{
  health = 100; // assuming 100 is max health
  position = new PVector(0, 0);
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
