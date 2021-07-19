using System;

namespace OOP03
{
    public class CurrentConditionsDisplay : Observer, DisplayElement
    {
        private int _temperature {get;set;}
        private float _humidity {get;set;}
        private WeatherData _weatherData;

        public CurrentConditionsDisplay(WeatherData weatherData)
        {
            this._temperature = 0;
            this._humidity = 0.0f;
            this._weatherData = weatherData;
            this._weatherData.RegisterObserver(this);
        }

        public void Update(int temperature, float humidity, float pressure)
        {
            _temperature = temperature;
            _humidity = humidity;
            this.Display();
        }

        public void Display()
        {
            Console.WriteLine(String.Format("Current Condition: {0}F degrees and {1} humidity", this._temperature, this._humidity));   
        }
    }
}