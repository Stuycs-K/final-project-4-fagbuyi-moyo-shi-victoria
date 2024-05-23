Spaceship player;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 1200); //can cahnge
  //moving backgroud somewhere yeah
  player = new Spaceship();
}

void draw()
{
  player.display();
}
