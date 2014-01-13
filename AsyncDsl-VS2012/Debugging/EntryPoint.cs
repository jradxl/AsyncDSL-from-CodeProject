using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Debugging
{
  class EntryPoint
  {
    static void Main(string[] args)
    {
      Breakfast b = new Breakfast();
      b.Prepare();

      Console.WriteLine("All done");
      Console.WriteLine("Press any key to quit.");
      Console.ReadKey();
    }
  }
}
