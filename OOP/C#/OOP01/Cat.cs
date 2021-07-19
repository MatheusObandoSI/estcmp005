using System;

namespace OOP01
{
    public class Cat : Pet
    {
        public Cat(){}
        public Cat(string name, int age, float weight)
        {
            this.Name = name;
            this.Age = age;
            this.Weight = weight;
        }

        public override void Eat()
        {
            Console.WriteLine(String.Format("{0} is eating Fish", this.Name)); 
        }

        public override void Vocalize()
        {
            Console.WriteLine(String.Format("{0} is meowing", this.Name)); 
        }

        public void Pur()
        {
            Console.WriteLine(String.Format("{0} is purring", this.Name)); 
        }
    }
}