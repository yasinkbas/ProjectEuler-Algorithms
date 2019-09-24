import UIKit

var array = [Int]()
for i in 1..<1000 {
    if i % 3 == 0 || i % 5 == 0 {
        array.append(i)
    }
}
var total = array.reduce(0, +)
