#Conceitos Básicos de orientação a objetos


class Pet():
    # Construtor
    def __init__(self, name, age, weight):
        # Atributos
        self.__name = name
        self.__age = age
        self.__weight = weight
        
    # Getters e Setters
    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self, name):
        self.__name = name

    @property
    def age(self):
        return self.__age

    @age.setter
    def age(self, age):
        self.__age = age

    @property
    def weight(self):
        return self.__weight

    @weight.setter
    def weight(self, weight):
        self.__name = weight

    # Métodos
    def eat(self):
        print("{0} is eating".format(self.__name))

    def sleep(self):
        print("{0} is sleeping".format(self.__name))
    
    def vocalize(self):
        print("{0} is vocalizing".format(self.__name))
########################################################
# A classe "Cat" herda os atributos e métodos da classe pai "Pet"
class Cat(Pet):
    def __init__(self, name, age, weight):
        super().__init__(name, age, weight)

    def eat(self):
        print("{0} is eating fish".format(self.name))

    def vocalize(self):
        print("{0} is meowing".format(self.name))

    def pur(self):
        print("{0} is purring".format(self.name))
########################################################
# A classe "Dog" herda os atributos e métodos da classe pai "Pet"
class Dog(Pet):
    def __init__(self, name, age, weight):
        super().__init__(name, age, weight)
    
    def eat(self):
        print("{0} is eating raw meat".format(self.name))

    def vocalize(self):
        print("{0} is barking".format(self.name))

    def dig(self):
        print("{0} is digging".format(self.name))
########################################################
# Instanciando objetos a partir de suas classes
mypet = Pet('Flippy', 17, 10.0)
print("My pet name: {0}".format(mypet.name))
print("My pet age: {0}".format(mypet.age))
print("My pet weight: {0} Kg".format(mypet.weight))
mypet.eat()
mypet.sleep()

mycat = Cat('Tom', 5, 4.0)
print("\nMy cat name: {0}".format(mycat.name))
print("My cat age: {0}".format(mycat.age))
print("My cat weight: {0} Kg".format(mycat.weight))
mycat.eat()
mycat.sleep()
mycat.vocalize()
mycat.pur()

mydog = Dog('Sam', 7, 15.0)
print("\nMy dog name: {0}".format(mydog.name))
print("My dog age: {0}".format(mydog.age))
print("My dog weight: {0} Kg".format(mydog.weight))
mydog.eat()
mydog.sleep()
mydog.vocalize()
mydog.dig()

