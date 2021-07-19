using System;

namespace OOP01
{
    public class Pet
    {
        protected internal string Name {get; set;}
        protected internal int Age {get; set;}
        protected internal float Weight {get; set;}
        
        public Pet(){}
        public Pet(string name, int age, float weight)
        {
            this.Name = name;
            this.Age = age;
            this.Weight = weight;
        }

        public virtual void Eat()
        {
            Console.WriteLine(String.Format("{0} is eating", Name)); 
        }
        public virtual void Sleep()
        {
            Console.WriteLine(String.Format("{0} is sleeping", Name));  
        }
        public virtual void Vocalize()
        {
            Console.WriteLine(String.Format("{0} is vocalizing", Name)); 
        }
    }
}