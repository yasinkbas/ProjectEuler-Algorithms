# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
#
def getPrimeNumbers(number):
    primeNumberSet = set()
    divider = 2
    while number != 1:
        if number % divider == 0:
            number /= divider
            primeNumberSet.add(divider)
            divider -= 1
        divider += 1
    return max(primeNumberSet)

print(getPrimeNumbers(600851475143))

