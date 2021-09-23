import random
import string

class Robot:
    def __init__(self):
        self.name_generator()
    
    def name_generator(self):
        self.name = "".join(random.SystemRandom().sample(string.ascii_uppercase, 2))
        for x in range(3):
            self.name += "".join(random.SystemRandom().sample(list(map(lambda x: str(x), range(10))), 1))

    def reset(self):
        self.name_generator()