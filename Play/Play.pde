Spaceship player;
Bullet place;
ArrayList<Bullet> bullets;
int countdown;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 1200);
  player = new Spaceship(600, 100);
  bullets = new ArrayList<Bullet>();
  PVector loc = player.getPos();
  place = new Bullet(new PVector(100, 100));
}


void keyPressed()
{
  if (key== 'q')
  {
    bullets.add(player.shoot());
  }
}

void draw()
{
  //background(128, 128, 128);
  player.display();
  for (Bullet bull : bullets)
  {
    bull.move();
    bull.applyDamage(player); //should apply dxdamdge to nearest enemy
    if (bull.getStatus() == false)
    {
      bullets.remove(bull);
    }
  }
  place.load(bullets);
  place.allMove(bullets);
  if (player.getHealth() < 95)
  {
    color c = color(69, 66, 245);
    fill(c);
    ellipse(1000, 100, 400, 400);
  }
}
