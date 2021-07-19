using System;

namespace OOP03
{
    class Program
    {
        static void Main(string[] args)
        {
            WeatherData weatherData = new WeatherData();
            CurrentConditionsDisplay CurrentConditionsDisplay = new CurrentConditionsDisplay(weatherData);
            weatherData.SetMeasurements(80, 65.0f, 30.4f);
            weatherData.SetMeasurements(82, 70.0f, 29.2f);
            weatherData.RemoveObserver(CurrentConditionsDisplay);
            weatherData.SetMeasurements(78, 90.0f, 29.2f);
        }
    }
}
