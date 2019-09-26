import UIKit

//The sum of the squares of the first ten natural numbers is,
//
//12 + 22 + ... + 102 = 385
//The square of the sum of the first ten natural numbers is,
//
//(1 + 2 + ... + 10)2 = 552 = 3025
//Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//
//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

//- straight logic -//
func sumOfSquares(endPoint:Int) -> Int {
    var total = 0
    for i in 1...endPoint {
        total += i*i
    }
    return total
}

func squareOfSum(endPoint:Int) -> Int {
    var total = 0
    for i in 1...endPoint {
        total += i
    }
    return total*total
}

abs(sumOfSquares(endPoint: 100) - squareOfSum(endPoint: 100))
