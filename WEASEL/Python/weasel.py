import random
import time
import copy
from string import ascii_uppercase

TARGET = list("METHINKS IT IS LIKE A WEASEL")
NUM_OFFSPRINGS = 100
MAX_SCORE = 28

class Child:
    def __init__(self, string = []):
        self.str = string
        self.score = len(list(filter(lambda x: x[0] == x[1], zip(self.str, TARGET))))
    
    def __str__(self):
       return (str.format("{} - SCORE: {}".format("".join(current_child.str), current_child.score)))

current_child = Child()
childs = []

def get_random_str():
    rand_str = []
    for i in range(len(TARGET)):
        rand_str.append(random.choice(ascii_uppercase + ' '))
    return rand_str

def evaluate(input):
    score = 0
    for i in range(len(TARGET)):
        if(input.str[i] == TARGET[i]):
            score += 1
    input.score = score

def mutate():
    global childs
    for i in (childs):
        for j in range(len(TARGET)):
            if(random.randint(0, 100) <= 5):
                i.str[j] = random.choice(ascii_uppercase + ' ')
        evaluate(i)
            
def reproduce():
    global childs
    global current_child
    childs = []
    for i in range(NUM_OFFSPRINGS):
        child = Child(current_child.str)
        childs.append(copy.deepcopy(child))

def evolve():
    global childs
    global current_child
    for i in childs:
        if(i.score > current_child.score):
            current_child = i

def start_program():
    global current_child
    current_child = Child(get_random_str())
    print(current_child)

    while(current_child.score < MAX_SCORE):
        time.sleep(0.1)

        reproduce()
        mutate()
        evolve()

        print(current_child)

start_program()