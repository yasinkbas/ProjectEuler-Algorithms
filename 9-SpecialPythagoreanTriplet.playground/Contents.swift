import UIKit

//A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//
//a2 + b2 = c2
//For example, 32 + 42 = 9 + 16 = 25 = 52.
//
//There exists exactly one Pythagorean triplet for which a + b + c = 1000.
//Find the product abc.

func run(num:Int) -> Int {
    for a in 1...num {
        for b in 1...num {
            var c = num - a - b
            if a*a + b*b == c*c {
                return a*b*c
            }
        }
    }
    return -1
}

run(num: 1000)
