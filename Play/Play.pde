Spaceship player;
Bullet place;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 1200); //can cahnge
  //moving backgroud somewhere yeah
  player = new Spaceship();
  place = new Bullet();
  player.display();
  PVector loc = player.getPos();
  place.spawn(loc);
}


void draw()
{
  place.move();
}
