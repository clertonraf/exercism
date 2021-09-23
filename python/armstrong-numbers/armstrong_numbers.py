import math

def is_armstrong_number(number):
    if(number == 0):
        return True
    else :
        sum = 0
        digits = int(math.log10(number)) + 1
        for d in range(digits):
            sum += int(math.pow(number // 10**d % 10, digits))
    return sum == number