/*
Verilen bir paragrafta, baştan sona ve sondan başa yazımı aynı olan en uzun karakter dizisini bulun ve ekrana yazdırın.

Örnek olarak, paragraf "Benidinleeyedipadanadapideyemeyiunutma" olsaydı, cevap “eyedipadanadapideye” olurdu.
Sizden beklenen paragraf:
yesthatssosaidsamandweshouldntbehereatallifwedknownmoreaboutitbeforewestartedbutisupposeitsoftenthatwaythebravethingsintheoldtalesandsongsmrfrodoadventuresasiusedtocallthemiusedtothinkthattheywerethingsthewonderfulfolkofthestorieswentoutandlookedforbecausetheywantedthembecausetheywereexcitingandlifewasabitdullakindofasportasyoumightsaybutthatsnotthewayofitwiththetalesthatreallymatteredortheonestharatstarayinthemindfolkseemtohavebeenjustlandedinthemusuallytheirpathswerelaidthatwayasyouputitbutiexpecttheyhadlotsofchanceslikeusofturningbackonlytheydidntandiftheyhadweshouldntknowbecausetheydhavebeenforgottenwehearaboutthoseasjustwentonandnotalltoagoodendmindyouatleastnottowhatfolkinsideastoryandnotoutsideitcallagoodendyouknowcominghomeandfindingsallrightthoughnotquitethesamelikeoldmrbilbobutthosearentalwaysthebesttalestohearthoughtheymaybethebesttalestogetlandediniwonderwhatsortofatalewevefalleninto
*/

// NOTE: its also has an easier way than it but my first solution is this
import UIKit

// expected middle line: two character like 'n|n' or three character like 'ana' |(middle)| -> "n"
enum Line {
    case twoCharLine
    case threeCharLine
}

// "mannam" Return middle line (first character which one is double) and return its' index
func findLine(in characters:[Character]) -> Dictionary<Character,Int> {
    var lineDict = [Character:Int]()
    var number = 0
    while number < characters.count - 1 {
        if characters[number] == characters[number+1] {
            lineDict[characters[number]] = number
        }
        number += 1
    }

    return lineDict
}

// "nan" Return index of middle line and character
func findLineThree(in characters:[Character]) -> Dictionary<Character,Int> {
    var lineDict = [Character:Int]()
    var number = 0
    while number < characters.count - 1 {
        if number == 0 {
            number += 1
            continue
        }
        if characters[number-1] == characters[number+1] {
            lineDict[characters[number]] = number
        }
        number += 1
    }
    
    return lineDict
}

//madamannapilipdjllfklal
// find the word by line and return it
// The operations here !!!!
func findLineWord(in charsText: [Character], character:Character,index:Int,line:Line) -> String {
    var lastWord = [Character]()
    switch line {
    case .twoCharLine:
        var index2 = index
        index2 += 1
        for i in 0..<(charsText.count / 2) {
            guard index2 + i < charsText.count && index - i > 0  else { break }
            if charsText[index - i] == charsText[index2 + i] {
                lastWord.append(charsText[index2 + i])
            } else {
                break
            }
        }
        let string = "\(String(lastWord.reversed()))\(String(lastWord))"
        
        return string

    case .threeCharLine:
        lastWord.append(charsText[index])
        for i in 1..<(charsText.count / 2) {
            print(index)
            guard index + i < charsText.count && index - i > 0 else { break }
            print("//// \(index + i)")
            if charsText[index - i] == charsText[index + i] {
                print("added \(charsText[index + i])")
                lastWord.append(charsText[index + i])
            } else {
                break
            }
        }
        let string = "\(String(lastWord.reversed().dropLast()))\(String(lastWord))"
        
        return string
    }
}

// Main Function
func seperateSpecialWords(in text:String) -> [String] {
    let characterArray = Array(text)
    var sentenceArray = [String]()
    let twoCharactersLine = findLine(in: characterArray)
    let threeCharactersLine = findLineThree(in: characterArray)

    twoCharactersLine.forEach { (char,index) in sentenceArray.append(findLineWord(in: characterArray, character: char, index: index, line: .twoCharLine)) }
    threeCharactersLine.forEach { (char,index) in sentenceArray.append(findLineWord(in: characterArray, character: char, index: index, line: .threeCharLine)) }

    return sentenceArray
}

// return max lenght word in array
func maxWord(in stringArray: [String]) -> String {

    let stringArr = stringArray.sorted(by: { (s1, s2) -> Bool in
        s1.count > s2.count
    })
    print(stringArr)
    
    return stringArr.first!
}


var allSentences = seperateSpecialWords(in: "yelavvaleyyesthatssosaidsamandweshouldntbehereatallifwedknownmoreaboutitbeforewestartedbutisupposeitsoftenthatwaythebravethingsintheoldtalesandsongsmrfrodoadventuresasiusedtocallthemiusedtothinkthattheywerethingsthewonderfulfolkofthestorieswentoutandlookedforbecausetheywantedthembecausetheywereexcitingandlifewasabitdullakindofasportasyoumightsaybutthatsnotthewayofitwiththetalesthatreallymatteredortheonestharatstarayinthemindfolkseemtohavebeenjustlandedinthemusuallytheirpathswerelaidthatwayasyouputitbutiexpecttheyhadlotsofchanceslikeusofturningbackonlytheydidntandiftheyhadweshouldntknowbecausetheydhavebeenforgottenwehearaboutthoseasjustwentonandnotalltoagoodendmindyouatleastnottowhatfolkinsideastoryandnotoutsideitcallagoodendyouknowcominghomeandfindingsallrightthoughnotquitethesamelikeoldmrbilbobutthosearentalwaysthebesttalestohearthoughtheymaybethebesttalestogetlandediniwonderwhatsortofatalewevefallenintlaalo")

print("the longest word is |\(maxWord(in: allSentences))|")
