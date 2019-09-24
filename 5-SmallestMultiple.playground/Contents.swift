import UIKit
//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

/* ------------- */
//This does not require programming at all. Compute the prime factorization of each number from 1 to 20, and multiply the greatest power of each prime together:
//
//20 = 2^2 * 5
//19 = 19
//18 = 2 * 3^2
//17 = 17
//16 = 2^4
//15 = 3 * 5
//14 = 2 * 7
//13 = 13
//11 = 11
//
//All others are included in the previous numbers.
//
//ANSWER: 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19 = 232 792 560

func getCountNumber(array:[Int]) -> Dictionary<Int,Int> {
    var countDictionary = Dictionary<Int,Int>()
    for item in array {
        countDictionary[item] = (countDictionary[item] ?? 0) + 1
    }
    
    return countDictionary
}

func removeWeakNumbers(_ dictArray: [(key: Int, value: Int)]) -> Dictionary<Int,Int> {
    var dictionary = Dictionary<Int,Int>()
    
    for i in dictArray {
        dictionary[i.key] = max(dictionary[i.key] ?? 1, i.value)
    }
    
    return dictionary
}

func getPrimeNumbers(numbers:[Int]) -> Set<Dictionary<Int,Int>> {
    var primeNumberSet = Set<Dictionary<Int,Int>>()
    
    for number in numbers {
        var number = number
        var array = [Int]()
        var divider = 2
        while number != 1 {
            if number % divider == 0 {
                number /= divider
                array.append(divider)
                divider -= 1
            }
            divider += 1
        }
        primeNumberSet.insert(getCountNumber(array: array))
    }
    return primeNumberSet
}
let start = NSDate() // start time

var totalArray = Array(getPrimeNumbers(numbers: [11,13,14,15,16,17,18,19,20]))
var joined = Array(totalArray.joined())
var removed = removeWeakNumbers(joined)

var total:Double = 1
for i in removed {
    total *= pow(Double(i.key), Double(i.value))
}

let end = NSDate() // end time
var timeInterval: Double = end.timeIntervalSince(start as Date)
print("the number \(total) solved in \(timeInterval) ms") //the number 232792560 solved in 0.02 ms






