"""
This exercise stub and the test suite contain several enumerated constants.

Since Python 2 does not have the enum module, the idiomatic way to write
enumerated constants has traditionally been a NAME assigned to an arbitrary,
but unique value. An integer is traditionally used because it’s memory
efficient.
It is a common practice to export both constants and functions that work with
those constants (ex. the constants in the os, subprocess and re modules).

You can learn more here: https://en.wikipedia.org/wiki/Enumerated_type
"""


# Score categories.
# Change the values as you see fit.
YACHT = 50
ONES = 0
TWOS = 1
THREES = 2
FOURS = 3
FIVES = 4
SIXES = 5
FULL_HOUSE = 32
FOUR_OF_A_KIND = 41
LITTLE_STRAIGHT = 15
BIG_STRAIGHT = 26
CHOICE = 11

def frequency(dice):
    freq = [0]*6
    for face in dice:
        freq[int(face)-1] +=1
    return freq

def yacht(dice):
    for freq in frequency(dice):
        if freq >= 4:
            return 50
    return 0

def four_of_a_kind(dice):
    for idx, freq in enumerate(frequency(dice)):
        if freq >= 4:
            return (idx+1)*4
    return 0

def little_straight(dice):
    freq = frequency(dice)
    for f in freq[:-1]:
        if f != 1:
            return 0
    if freq[-1] == 0:
        return 30
    else:
        return 0

def big_straight(dice):
    freq = frequency(dice)
    for f in freq[1:]:
        if f != 1:
            return 0
    if freq[0] == 0:
        return 30
    else:
        return 0

def full_house(dice):
    count2 = False
    count3 = False
    for f in frequency(dice):
        if f == 2:
            count2 = True
        if f == 3:
            count3 = True
    if count3 and count2:
        return sum(dice)
    else:
        return 0

def score(dice, category):
    if category in range(0, 7):
        return frequency(dice)[category]*(category+1)
    if category == YACHT:
        return yacht(dice)
    if category == CHOICE:
        return sum(dice)
    if category == FOUR_OF_A_KIND:
        return four_of_a_kind(dice)
    if category == LITTLE_STRAIGHT:
        return little_straight(dice)
    if category == BIG_STRAIGHT:
        return big_straight(dice)
    if category == FULL_HOUSE:
        return full_house(dice)
    
