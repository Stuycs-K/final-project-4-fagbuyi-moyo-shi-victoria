//ArrayList<Enemy> enemies;

public class Enemy extends Spaceship
{
  
  public Enemy()
  {
    super();
    enemies.add(this);
  }
  
  public void die()
  {
    if (health == 0)
    {
      enemies.remove(this);
    }
  }
}
