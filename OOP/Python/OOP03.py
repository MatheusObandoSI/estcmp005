# Implementação do padrão de projeto Observer

# Interface Observer
class Observer:
    def update(self, temp, humidity, pressure):
        # Força a implementação deste método a todas as classes que herdam da classe Observer
        raise NotImplementedError()

#Interface Subject
class Subject:
    def register_observer(self, observer):
        raise NotImplementedError()
    
    def remove_observer(self, observer):       
        raise NotImplementedError()
    
    def notify_observers(self):
        raise NotImplementedError()

# Interface para implementação do display das informações
class DisplayElement:
    def display(self):
        raise NotImplementedError()

class WeatherData(Subject):
    def __init__(self):
        self.observers = []
        self.temperature = 0
        self.humidity = 0.0
        self.pressure = 0.0

    def register_observer(self, observer):
        if observer not in self.observers:
            self.observers.append(observer)

    def remove_observer(self, observer):
        try:
            self.observers.remove(observer)
        except ValueError:
            print("{} not founded".format(observer))

    def notify_observers(self):
        for observer in self.observers:
            observer.update(self.temperature, self.humidity, self.pressure)
    
    def measurements_changed(self):
        self.notify_observers()
        
    def set_measurements(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        self.measurements_changed()

class CurrentConditionsDisplay(Observer, DisplayElement):
    def __init__(self, weather_data):
        self.temperature = 0
        self.humidity = 0.0
        self.weather_data = weather_data
        self.weather_data.register_observer(self)
    
    def update(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.display()
    
    def display(self):
        print("Current conditions: {}F degrees and {} humidity".format(self.temperature, self.humidity))

# class StatisticsDisplay(Observer, DisplayElement):
#     pass

# class ForecastDisplay(Observer, DisplayElement):
#     pass

weather_data = WeatherData()
current_condition_display = CurrentConditionsDisplay(weather_data)
#statistics_display = StatisticsDisplay(weather_data)
#forecast_display = ForecastDisplay(weather_data)
weather_data.set_measurements(80, 65, 30.4)
weather_data.set_measurements(82, 70, 29.2)
weather_data.remove_observer(current_condition_display)
weather_data.set_measurements(78, 90, 29.2)



