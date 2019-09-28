import UIKit

//The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
//Find the sum of all the primes below two million.

func sumPrimeNumbers(to: Int) -> Int {
    func isPrime(number:Int) -> Bool {
        let to = Int(sqrt(Double(number)) + 1)
        for i in 2...to {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
    var primes = [2]
    var counter = 2
    
    while true {
        if counter == to { return primes.reduce(0,+) }
        if isPrime(number: counter) { primes.append(counter) }
        counter += 1
    }
}
sumPrimeNumbers(to: 2_000_000)
