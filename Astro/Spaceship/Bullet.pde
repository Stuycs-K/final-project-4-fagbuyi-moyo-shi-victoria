private int damage;
private PVector pos;

public void Bullet()
{
  damage = 2;
}

public void move()
{
  // so bullet gets locat of spaceship
  // and then moves.
  pos = new PVector (this.x, this.y); // idk why this give error
}

public void applyDamage()
{
}
