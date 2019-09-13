//Soru 4: İki yönden de aynı şekilde okunan sayılara palindromik sayılar denir. 2 haneli 2 sayıdan oluşturulabilecek en büyük palindrom değeri 9009’dur. (91 x 99)
//3 haneli iki sayıdan oluşturulabilecek en büyük palindromik sayıyı bulunuz.

import UIKit

let start = NSDate() // start time
var theBiggestNum = 0
var theBiggestMultiplier = 0
var theBiggestMultiplicand = 0
var minNumber = 0
outherLoop: for i in stride(from: 999, to: 100, by: -1) {
    inLoop: for j in stride(from: 999, to: 100, by: -1) {
        if i == 990 && j == 990 { // eger bu kosula girmiyorsa kod daha yuksek rakam verebilecek olasiliklari degerlendirmiyordur
            print("this code try every big number possibility")
        }
        let multiple = i * j
        var result = Array(String(multiple))
        if result.count % 2 == 0 {
            let firstMiddle = result.count / 2 - 1
            for i in 0...((result.count / 2) - 1) {
                guard result[firstMiddle - i] == result[(firstMiddle + 1) + i]  else { continue inLoop }
            }
        } else {
            let middle = result.count / 2
            for i in 1...((result.count / 2)) {
                guard result[middle - i] == result[middle + i] else { continue inLoop }
            }
        }
        if theBiggestNum < multiple {
            theBiggestNum = multiple
            theBiggestMultiplier = i
            theBiggestMultiplicand = j
            minNumber = [j,i].min()!
        }
        if theBiggestMultiplicand > j { break inLoop }
    }

    if minNumber > i { break outherLoop }
}
let end = NSDate() // end time
print("The biggest polindromik number: \(theBiggestNum)")
var timeInterval: Double = end.timeIntervalSince(start as Date)
print("finished in \(timeInterval) seconds")
