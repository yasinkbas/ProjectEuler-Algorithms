// Elinizde bir cumle yada bir metin oldugunu varsayalim. Bazi kelimelerin tekrar ettigini dusunun. Bir cumle icinde kelimelerin gecme sayisini bulunuz.

import UIKit

let sentence = "Bugun iOS Bootcamp basladi. Bootcamp cok guzeldi"


func countWords(for sentence: String) -> [String:Int] {
    let sentenceArray = sentence.components(separatedBy: .whitespacesAndNewlines)
    var wordsArray = [String]()

    for i in sentenceArray {
        i.last! == "." || i.last! == "," ? wordsArray.append(String(i.dropLast())) : wordsArray.append(i)
    }

    var wordsDictionary = [String:Int]()

    for i in wordsArray {
        wordsDictionary[i] = (wordsDictionary[i] ?? 0) + 1
    }
    return wordsDictionary
}


print(countWords(for: "Bugun iOS Bootcamp basladi. Bootcamp, cok guzeldi."))
