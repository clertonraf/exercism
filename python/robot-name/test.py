import random
import string

seed = "Totally random."
random.seed(seed)
items = list(string.ascii_lowercase)
print(items)
print(random.sample(items, 3))