using System;

namespace OOP01
{
    public class Dog : Pet
    {
        public Dog(){}

        public Dog(string name, int age, float weight)
        {
            this.Name = name;
            this.Age = age;
            this.Weight = weight;
        }

        public override void Eat()
        {
            Console.WriteLine(String.Format("{0} is eating raw meat", this.Name)); 
        }

        public override void Vocalize()
        {
            Console.WriteLine(String.Format("{0} is barking", this.Name)); 
        }

        public void Dig()
        {
            Console.WriteLine(String.Format("{0} is digging", this.Name)); 
        }
    }
}