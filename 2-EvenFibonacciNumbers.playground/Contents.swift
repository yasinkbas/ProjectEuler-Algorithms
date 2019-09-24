import UIKit

var fiboArray = [1,1]
var evenTotal = 0
var i = 2
while true {
    if fiboArray[i-1] > 4000000 { break }
    fiboArray.append(fiboArray[i - 1] + fiboArray[i - 2])
    if fiboArray[i] % 2 == 0 {
        evenTotal += fiboArray[i]
    }
    i += 1
}
print(evenTotal)
