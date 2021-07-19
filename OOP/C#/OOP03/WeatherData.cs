using System;
using System.Collections.Generic;

namespace OOP03
{
    public class WeatherData : Subject
    {
        private int _temperature {get;set;}
        private float _humidity {get;set;}
        private float _pressure {get;set;}
        private List<Observer> _observers;

        public WeatherData()
        {
            this._temperature = 0;
            this._humidity = 0.0f;
            this._pressure = 0.0f;
            this._observers = new List<Observer>();
        }

        public void RegisterObserver(Observer observer)
        {
            if(!_observers.Contains(observer))
            {
                _observers.Add(observer);
            }
        }

        public void RemoveObserver(Observer observer)
        {
            _observers.Remove(observer);
        }

        public void NotifyObservers()
        {
            foreach(Observer observer in _observers)
            {
                observer.Update(_temperature, _humidity, _pressure);
            }
        }

        private void MeasurementsChanged()
        {
            this.NotifyObservers();
        }

        public void SetMeasurements(int temperature, float humidity, float pressure)
        {
            _temperature = temperature;
            _humidity = humidity;
            _pressure = pressure;
            this.MeasurementsChanged();
        }
    }
}