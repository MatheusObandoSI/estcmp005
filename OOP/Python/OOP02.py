#Associação, Agregação e Composição

class Platform:
    def __init__(self, name, developer):
        self.__name = name
        self.__developer = developer

    @property
    def name(self):
        return self.__name

    @property
    def developer(self):
        return self.__developer

    def info(self):
        print("Platform: {0}\nDeveloper: {1}\n".format(self.__name, self.__developer))
###############################################################################################################################################
class Game:
    def __init__(self, title, genre, developer, price):
        self.__title = title
        self.__genre = genre
        self.__developer = developer
        self.__price = price
        self.__platforms = []
     
    @property
    def title(self):
        return self.__title

    @title.setter
    def title(self, title):
        self.__title = title

    @property
    def genre(self):
        return self.__genre

    @genre.setter
    def genre(self, genre):
        self.__genre = genre

    @property
    def developer(self):
        return self.__developer

    @developer.setter
    def developer(self, developer):
        self.__developer = developer

    @property
    def price(self):
        return self.__price

    @price.setter
    def price(self, price):
        self.__price = price

    def set_platform(self, platform: Platform):
        self.__platforms.append(platform)

    def info(self):
        print("Title: {0}\nGenre: {1}\nDeveloper: {2}\nPrice: {3}\n".format(self.__title, self.__genre, self.__developer, self.__price))
        [i.info() for i in self.__platforms]
###############################################################################################################################################
class Cart:
    def __init__(self, fee = 0):
        self.__fee = fee
        self.__items = []

    def add_item(self, item):
        self.__items.append(item)

    def show_cart(self):
        for i in self.__items:
            print("{0} -> {1}$".format(i.title, i.price + (i.price*(self.__fee))))

    def purchase_items(self):
        print("Total Price: {0}$\n".format(sum((item.price + (item.price*(self.__fee))) for item in self.__items)))
###############################################################################################################################################
class Store:
    def __init__(self, name, fee):
        self.__name = name
        self.__cart = Cart(fee/100)

    @property
    def cart(self):
        return self.__cart
###############################################################################################################################################
playstation = Platform('Playstation 4', 'Sony')
windows = Platform('Windows', 'Microsoft')
xbox = Platform('Xbox One', 'Microsoft')
switch = Platform('Nintendo Switch', 'Nintendo')

game1 = Game('Sonic Mania', 'Platform', 'Sega', 100)
game1.set_platform(xbox)
game1.set_platform(playstation)
game1.set_platform(switch)
game1.set_platform(windows)

game2 = Game('Dark Souls', 'RPG', 'FromSoftware', 200)
game2.set_platform(xbox)
game2.set_platform(playstation)
game2.set_platform(windows)

steam = Store('Steam', 10.0)
steam.cart.add_item(game1)
steam.cart.add_item(game2)
steam.cart.show_cart()
steam.cart.purchase_items()