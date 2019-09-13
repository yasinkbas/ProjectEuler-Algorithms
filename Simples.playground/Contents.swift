import Foundation

// Soru : 1000 den küçük 3 veya 5 in katı olan sayıların toplamını bulan bir swift programı yazınız. Örneğin 10 dan küçük için 3,5,6 ve 9 olacaktı. Bunların toplamı 23
var array = [Int]()
for i in 1..<1000 {
    if i % 3 == 0 || i % 5 == 0 {
        array.append(i)
    }
}
var total = array.reduce(0, +)

//Soru :  4 milyondan küçük çift fibonacci sayılarının toplamını bulunuz.

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


