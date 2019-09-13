 /*
 İlk adım: Verilen bir sayıdan büyük, en küçük fibonacci sayısını bulup ekrana yazdırın. Örneğin size verilen sayı 20 olsaydı, bu sayıdan büyük en küçük fibonacci sayısı 21 olacaktı.
  
 İkinci adım: İlk adımda bulduğunuz sayının 1 fazlasının asal çarpanlarının toplamını bulup ekrana yazdırın. Örneğin ilk soruda cevap 24 olsaydı, asal çarpanları 2 ve 3 olacak, cevap da 5 olacaktı.
  
 Sizden cevapları bulmanızın beklendiği sayı: 10000
  
 Ek Bilgiler:
 Fibonacci dizisi, her sayının kendinden öncekiyle toplanması sonucu oluşan bir sayı dizisidir. Fibonacci serisi aşağıdaki şekilde başlar:
 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, …
 Asal çarpanlar, bir sayıyı bölebilen asal sayılardır. Örneğin 12’nin çarpanları 1,2,3,4,6 ve 12’dir. Bunlardan yalnızca 2 ve 3 asaldır, bu nedenle asal çarpanlar 2 ve 3’tür.
  */
import UIKit

 func getFiboArray(_ n: Int) -> [Int] {
     var fiboArray: [Int] = [1, 1]
     (2...n).forEach { i in
         fiboArray.append(fiboArray[i - 1] + fiboArray[i - 2])
     }
     return fiboArray
 }
 
 func getFiboUpperThanNumber(number:Int) -> Int {
     let fiboArray = getFiboArray(30) // [ilk 30 fibonacci sayisi]
 
     var bigArray = [Int]()
 
     for i in 1..<fiboArray.count {
         if fiboArray[i] > number {
             bigArray.append(fiboArray[i])
         }
     }
 
     return bigArray.min()!
 }
 
 getFiboUpperThanNumber(number: 10000) // first upper number than @param
 
 // attempt \2
 
 func getPrimeNumbers(number:Int) -> Int {
     var number = getFiboUpperThanNumber(number: number) + 1
     var primeNumberSet = Set<Int>()
     var divider = 2
 
     while number != 1 {
         if number % divider == 0 {
             number /= divider
             primeNumberSet.insert(divider)
             divider -= 1
         }
         divider += 1
     }
 
     return primeNumberSet.reduce(0, +)
 
 }
 
 getPrimeNumbers(number: 10000)
 getPrimeNumbers(number: 24)
