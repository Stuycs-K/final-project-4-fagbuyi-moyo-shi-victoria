Spaceship player;
Bullet place;
int countdown;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 1200);
  player = new Spaceship();
  PVector loc = player.getPos();
  place = new Bullet(loc);
}


void draw()
{
  background(128, 128, 128);
  player.display();
  place.move();
}
