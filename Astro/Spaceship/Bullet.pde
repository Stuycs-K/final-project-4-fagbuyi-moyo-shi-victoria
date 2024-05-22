private int damage;
private PVector pos;

public Bullet()
{
  damage = 2;
}

public void move(Spaceship pop)
{
  pos = new PVector (pop.x, pop.y); // this being the spaceship
}

public void applyDamage()
{
}
