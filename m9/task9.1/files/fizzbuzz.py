
def fzbz(digit):
    if digit % 3 == 0 and digit % 5 == 0:
        return("FizzBuzz")
    elif digit % 5 == 0:
        return("Buzz")
    elif digit % 3 == 0 :
        return("Fizz")
    else:
        pass
