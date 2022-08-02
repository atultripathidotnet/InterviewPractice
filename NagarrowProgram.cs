using System;
using System.Linq;

namespace DuplicateInteger
{
    internal class Program
    {
        static void Main(string[] args)
        {

            //int[] lst = new int[] { 99, 98, 92, 97, 95,};
            //var query = lst.GroupBy(x => x)
            //       .Where(x => x.Count() > 1)
            //       .Select(x => x.Key)
            //       .ToList().OrderBy(x => x);
            //if (query.Count() == 0)
            //{
            //    Console.Write("-1");
            //}
            //foreach (var a in query)
            //{
            //    Console.Write(a.ToString() + " ");

            //}
            A obj = new B();
            obj.showGreet();
            Console.ReadKey();
        }
    }
    public class A
    {
        public void showGreet()
        {
            Console.WriteLine("Greeting from A");
        }
    }
    public class B : A
    {
        public void showGreet()
        {
            Console.WriteLine("Greeting from B");
        }
    }
}
