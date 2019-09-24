import UIKit

func getPrimeNumbers(number:Int) -> Int {
    var number = number
    var primeNumberSet = Set<Int>()
    var divider = 2

    while number != 1 {
        if number % divider == 0 {
            number /= divider
            primeNumberSet.insert(divider)
            divider -= 1
        }
        divider += 1
    }

    return primeNumberSet.max()!

}

getPrimeNumbers(number: 600851475143)
