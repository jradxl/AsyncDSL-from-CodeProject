using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace Debugging
{
  partial class Breakfast
  {
    AutoResetEvent eatHandle = new AutoResetEvent(false);
    Random rand = new Random();

    public void Prepare()
    {
      ThreadStart[] ops = new ThreadStart[] {
        MakeTea,
        GetJam,
        ToastBread,
        MakeSandwich,
        EatBreakfast };
      foreach (ThreadStart op in ops)
        op.BeginInvoke(null, null);
      eatHandle.WaitOne();
    }

    private int RandomInterval
    {
      get
      {
        return (1 + rand.Next() % 10) * 100;
      }
    }

    public void MakeTeaImpl()
    {
      Thread.Sleep(RandomInterval);
      Console.WriteLine("Make tea");
    }

    public void ToastBreadImpl()
    {
      Thread.Sleep(RandomInterval);
      Console.WriteLine("Toast bread");
    }

    public void GetJamImpl()
    {
      Thread.Sleep(RandomInterval);
      Console.WriteLine("Get jam");
    }

    public void MakeSandwichImpl()
    {
      Thread.Sleep(RandomInterval);
      Console.WriteLine("Make sandwich");
    }

    public void EatBreakfastImpl()
    {
      Thread.Sleep(RandomInterval);
      Console.WriteLine("Eat breakfast");
      eatHandle.Set();
    }
  }
}
