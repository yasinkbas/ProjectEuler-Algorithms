// Money Problem
// link: https://www.youtube.com/watch?v=pkXcw7-Vz7g&feature=youtu.be&t=56
import UIKit

var fullMoney:Double = 100
var personMoneyDict = [Int:Double]()
for i in 1...100 {
    print("\(i).ci kisi kalan paranin %\(i)sini aliyor yani \(fullMoney / 100.0 * Double(i))")
    personMoneyDict[i] = fullMoney / 100.0 * Double(i)
    fullMoney -= fullMoney / 100 * Double(i)
    if fullMoney < 0 {
        print("para eksiye dustu")
    }
}
personMoneyDict.forEach { (key,value) in
    print("\(key) numarali sahsin aldigi para \(value)")
}
