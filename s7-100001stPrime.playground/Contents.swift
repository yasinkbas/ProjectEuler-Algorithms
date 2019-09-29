import UIKit

//By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//
//What is the 10 001st prime number?

func getPrimeNumber(count:Int) -> Int {
    
    func isPrime(number:Int) -> Bool {
        let to = Int(sqrt(Double(number)) + 1)
        for i in 2...to {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
    
    var counter = 2
    var primeCounter = 1
    while true {
        if primeCounter == count { return counter-1 }
        if isPrime(number: counter) {
            primeCounter += 1
        }
        counter += 1
    }
}

let start = NSDate() // start time
let thePrimeNumber = getPrimeNumber(count: 10001) // 104743
let end = NSDate() // end time
var timeInterval: Double = end.timeIntervalSince(start as Date)
print("finished in \(timeInterval) seconds the prime number is \(thePrimeNumber)") // 7.2 seconds on my computer so i think this is enough for this solution

