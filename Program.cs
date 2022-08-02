using System;
class Program{
   static void Main(string[] args)
    {
        int i = 5;
        Calc(ref i);
        Calc(6);
        Console.WriteLine(i);
        Console.ReadKey();
   }
    static void Calc(ref int x)
    {
        x = x * x;
    }
    static void Calc(int x)
    { 
    Console.WriteLine(x*x*x);
    }
   
}
