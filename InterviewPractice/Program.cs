using System;
using System.Linq;

namespace InterviewPractice
{
    class Program
    {
        static void Main(string[] args)
        {

            //reverseString();

            #region exception concept
            //try
            //{
            //    int num1 = 100;
            //    int num2 = 0;
            //    int result = num1 / num2;
            //    Console.Write(result);
            //}
            //catch (ArithmeticException ex)
            //{

            //    Console.Write("arithmetic exception");
            //}
            //catch (Exception ex)
            //{

            //    Console.Write("main catch block");
            //}
            #endregion

            /*remove duplicate from int array call starts*/
            //int [] numberArray = new int[5];
            //numberArray[0] = 5;
            //numberArray[1] = 4;
            //numberArray[2] = 3;
            //numberArray[3] = 3;
            //numberArray[4] = 2;
            //foreach (int number in RemoveDuplicates(numberArray))
            //{
            //    Console.WriteLine(number);
            //}
            /*remove duplicate from int array call ends*/

            /*static constructor call starts*/
            //Account a1 = new Account(101, "Sonoo");
            //Account a2 = new Account(102, "Mahesh");
            //a1.display();
            //a2.display();
            /*static constructor call ends*/
            Console.Read();
        }
        #region remove duplicate number from array
        public static int[] RemoveDuplicates(int[] inputArray)
        {
            return inputArray.Distinct().ToArray<int>();

        }
        #endregion
        #region Method to reverse string without using library function
        private static void reverseString()
        {
            string message = "Hello";
            char[] _chars = message.ToCharArray();
            string finalOutput = string.Empty;
            for (int i = _chars.Length - 1; i >= 0; i--)
            {
                finalOutput += _chars[i];
            }
            Console.WriteLine(finalOutput);
            Console.Read();
        }
        #endregion
        #region reverse int variable value
        public static int reverseNumber(int Number)
        {
            int ReverseNumber = 0;
            while (Number > 0)
            {
                ReverseNumber = (ReverseNumber * 10) + (Number % 10);
                Number = Number / 10;
            }
            return ReverseNumber;
        }
        #endregion

    }
    /*Method can be overloaded number of parameter, type of parameter, order of parameter*/
    public class Calculate
    {
        public int Add(int n1, int n2)
        {
            return n1 + n2;
        }
        public int Add(float n1, float n2)
        {
            return 0;
        }
        public int Add(float n1, int n2)
        {
            return 0;
        }
        public int Add(int n1, float n2)
        {
            return 0;
        }
    }
    /*Static constructor will be called only one time. 
     * It can not have access specifier and parameter.
     * It is used to initialize static variable of class or function that
     * required only once.
     */
    public class Account
    {
        public int id;
        public String name;
        public static float rateOfInterest;
        public Account(int id, String name)
        {
            this.id = id;
            this.name = name;
        }
        static Account()
        {
            rateOfInterest = 9.5f;
        }
        public void display()
        {
            Console.WriteLine(id + " " + name + " " + rateOfInterest);
        }
    }
}
