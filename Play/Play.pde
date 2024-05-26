Spaceship player;
Bullet place;
int countdown;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 1200);
  player = new Spaceship(600, 100);
  PVector loc = player.getPos();
  place = new Bullet(new PVector(100, 100));
}


void draw()
{
  background(128, 128, 128);
  player.display();
  place.move();
  place.applyDamage(player);
  if (player.getHealth() < 95)
  {
    color c = color(69, 66, 245);
    fill(c);
    ellipse(1000, 100, 400, 400);
  }
}
