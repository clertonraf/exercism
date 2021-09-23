import math
import random

class Character:
    def __init__(self):
        self.strength = self.ability()
        self.dexterity = self.ability()
        self.constitution = self.ability()
        self.intelligence = self.ability()
        self.wisdom = self.ability()
        self.charisma = self.ability()
        self.hitpoints = 10 + modifier(self.constitution)

    def ability(self):
        return sum(sorted(random.SystemRandom().sample(range(1,7), 4))[1:])

def modifier(constitution):
    return math.ceil((constitution - 10) // 2)
