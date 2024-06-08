public class E3 extends Enemy
{
  public ArrayList<E3> despawn(ArrayList<E3> en)
    {
      ArrayList<E3> live =  new ArrayList<E3>();
      for (E3 ene : en)
      {
        if (ene.getHealth() != 0)
        {
          live.add(ene);
        }
        else
        {
          score += 10;
        }
      }
      return live;
    }
}
