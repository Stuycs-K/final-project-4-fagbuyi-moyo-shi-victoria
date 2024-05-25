Spaceship player;
Bullet place;
int countdown;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 1200); //can cahnge
  //moving backgroud somewhere yeah
  player = new Spaceship();
  player.display();
  PVector loc = player.getPos();
  place = new Bullet(loc);
  //place.display();
}


void draw()
{
  //place.display();
  place.move();
}
