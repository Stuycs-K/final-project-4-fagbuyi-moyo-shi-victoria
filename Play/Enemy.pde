
public class Enemy extends Spaceship{
    void direction(){}
    public Enemy(){}
    
        public ArrayList<Enemy> despawn(ArrayList<Enemy> en)
    {
      ArrayList<Enemy> live =  new ArrayList<Enemy>();
      for (Enemy ene : en)
      {
        if (ene.getHealth() != 0)
        {
          live.add(ene);
        }
        else
        {
          score++;
        }
      }
      return live;
    }
}
