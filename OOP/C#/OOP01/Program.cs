using System;

namespace OOP01
{
    class Program
    {
        static void Main(string[] args)
        {
            Pet mypet = new Pet("Flippy", 17, 10.0f);
            Console.WriteLine(String.Format("My pet name: {0}", mypet.Name)); 
            Console.WriteLine(String.Format("My pet age: {0}", mypet.Age)); 
            Console.WriteLine(String.Format("My pet weight: {0}Kg", mypet.Weight)); 
            mypet.Eat();
            mypet.Sleep();
            mypet.Vocalize();

            Cat mycat = new Cat("Tom", 5, 4.0f);
            Console.WriteLine(String.Format("\nMy pet name: {0}", mycat.Name)); 
            Console.WriteLine(String.Format("My pet age: {0}", mycat.Age)); 
            Console.WriteLine(String.Format("My pet weight: {0}Kg", mycat.Weight));
            mycat.Eat();
            mycat.Sleep();
            mycat.Vocalize();
            mycat.Pur();

            Dog mydog = new Dog("Sam", 7, 15.0f);
            Console.WriteLine(String.Format("\nMy pet name: {0}", mydog.Name)); 
            Console.WriteLine(String.Format("My pet age: {0}", mydog.Age)); 
            Console.WriteLine(String.Format("My pet weight: {0}Kg", mydog.Weight));
            mydog.Eat();
            mydog.Sleep();
            mydog.Vocalize();
            mydog.Dig();
        }
    }
}
