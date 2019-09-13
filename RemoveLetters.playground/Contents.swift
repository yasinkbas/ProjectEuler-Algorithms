/*
 Senaryo:
 Elimizde sadece harflerden ve boşluklardan oluşan (noktalama işaretleri veya sayılar yok) uzun stringler var. Bu stringlerin içinde doğal olarak bazı harfler tekrar ediyor, mesela ‘a’ harfi 20 farklı indexte bulunabiliyor. Biz, verilen bir sayı kadar, veya daha fazla tekrarlanan harfleri silmek istiyoruz. Örnek olarak “2” sayısı verildiğinde, 2 ve 2’den fazla tekrarlayan harfler string’den çıkarılacak.
 Örnek:
 Elimizdeki string “aaba kouq bux” olduğunu düşünelim. ‘a’ harfi 3 kez, ‘b’ ve ‘u’ harfleri 2 kez
 tekrarlanıyor.
  Tekrar sayısı “2” verildiğinde, ‘a’,‘b’ ve ‘u’ harfleri çıkarılacak, sonuç: “koq x”
  Tekrar sayısı “3” verildiğinde, ‘a’ harfi çıkarılacak, sonuç: “b kouq bux”
  Tekrar sayısı “4” verildiğinde, hiç bir harf çıkarılmayacak, sonuç: “aaba kouq bux”
 */

import UIKit

func characterRemover(in str:String, more count:Int) -> String {
    var wordArray = str.components(separatedBy: .whitespacesAndNewlines)
    var characterDict = [String:Int]()
    for i in str {
        characterDict[String(i)] = (characterDict[String(i)] ?? 0) + 1
    }

    for (key,value) in characterDict {
        if value >= count {
            for i in 0..<wordArray.count {
                wordArray[i] = wordArray[i].replacingOccurrences(of: "\(key)", with: "")
            }
        }
    }
    return wordArray.joined(separator: " ")
}
characterRemover(in: "aaba kouq bux", more: 2)
