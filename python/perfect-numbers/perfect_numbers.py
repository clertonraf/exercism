def classify(number):
    if(number < 1) :
        raise ValueError("ValueError")
    sum = aliquot_sum(number)
    if sum == number:
        return "perfect"
    elif sum > number:
        return "abundant"
    else:
        return "deficient"

def aliquot_sum(number):
    sum = 0
    for n in range(1, (number//2)+1):
        if(number % n == 0):
            sum += n
    return sum