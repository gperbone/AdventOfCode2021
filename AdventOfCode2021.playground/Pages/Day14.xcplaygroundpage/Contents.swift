import Foundation

var string = "HBCHSNFFVOBNOFHFOBNO"

var dicInput : [String:Character] = ["HF" : "O","KF" : "F","NK" : "F","BN" : "O","OH" : "H","VC" : "F","PK" : "B","SO" : "B","PP" : "H","KO" : "F","VN" : "S","OS" : "B","NP" : "C","OV" : "C","CS" : "P","BH" : "P","SS" : "P","BB" : "H","PH" : "V","HN" : "F","KV" : "H","HC" : "B","BC" : "P","CK" : "P","PS" : "O","SH" : "N","FH" : "N","NN" : "P","HS" : "O","CB" : "F","HH" : "F","SB" : "P","NB" : "F","BO" : "V","PN" : "H","VP" : "B","SC" : "C","HB" : "H","FP" : "O","FC" : "H","KP" : "B","FB" : "B","VK" : "F","CV" : "P","VF" : "V","SP" : "K","CC" : "K","HV" : "P","NC" : "N","VH" : "K","PF" : "P","PB" : "S","BF" : "K","FF" : "C","FV" : "V","KS" : "H","VB" : "F","SV" : "F","HO" : "B","FN" : "C","SN" : "F","OB" : "N","KN" : "P","BV" : "H","ON" : "N","NF" : "S","OF" : "P","NV" : "S","VS" : "C","OO" : "C","BP" : "H","BK" : "N","CP" : "N","PC" : "K","CN" : "H","KB" : "B","BS" : "P","KK" : "P","SF" : "V","CO" : "V","CH" : "P","FO" : "B","FS" : "F","VO" : "H","NS" : "F","KC" : "H","VV" : "K","NO" : "P","OK" : "F","PO" : "V","FK" : "H","OP" : "H","PV" : "N","CF" : "P","NH" : "K","SK" : "O","KH" : "P","HP" : "V","OC" : "V","HK" : "F"]

//i will add the new letters in reverse order, so it doesnt affect the index of the items
func insertNewChar(string: String, times: Int) -> String{
    
    var oldString = string
    var newString = string
    
    for _ in 1...times{
        for i in (2...oldString.count).reversed(){
            for (key, value) in dicInput{
                if key == oldString.prefix(i).suffix(2){
                    newString.insert(value, at: oldString.index(oldString.startIndex, offsetBy: i-1))
                }
            }
        }
        oldString = newString
        
    }
    
    
    return(newString)
}

var afterInsertion = insertNewChar(string: string, times: 10)

var dictOfChars = [Character:Int]()
for char in afterInsertion {
    dictOfChars[char] = dictOfChars[char] != nil ? dictOfChars[char]! + 1 : 1
}

print("Answer for part 1 is : \(dictOfChars.values.max()! - dictOfChars.values.min()!)")

// part 2
//this time we need a more efficient version of the code

func insertNewCharEfficient(string: String, times: Int) -> Double{
    //this dict will save all combinations of letters in the first string, and increment from that
    var dictTwoLetters = [String:Double]()
    
    for i in 2...string.count{
        let aux = String(string.prefix(i).suffix(2))
            dictTwoLetters[aux] = dictTwoLetters[aux] != nil ? dictTwoLetters[aux]! + 1 : 1
    }

    // now this should read each combination, and include two more readings to the dict
    for _ in 1...times{
        for (key, value) in dictTwoLetters{
            for (key2, value2) in dicInput{
                if key == key2{
                    let aux = String(value2)
                    let leftSide = String(key.prefix(1))
                    let rightSide = String(key.suffix(1))
                    
                    let leftAux = leftSide + aux
                    let rightAux = aux + rightSide
                   
                    dictTwoLetters[leftAux] = dictTwoLetters[leftAux] != nil ? dictTwoLetters[leftAux]! + value : value
                    
                    dictTwoLetters[rightAux] = dictTwoLetters[rightAux] != nil ? dictTwoLetters[rightAux]! + value : value

                    //delete the pair we just altered
                    dictTwoLetters[key] = dictTwoLetters[key]! - value
                    
            }
        }
    }
    }

    
    // now we count how many times each letter appears
    var appears = [String:Double]()
    
    for (key,value) in dictTwoLetters{
        appears[String(key.prefix(1))] = appears[String(key.prefix(1))] != nil ? appears[String(key.prefix(1))]! + value : value
        appears[String(key.suffix(1))] = appears[String(key.suffix(1))] != nil ? appears[String(key.suffix(1))]! + value : value
    }
    
    // every char is counted twice, so we have to correct this array
    for key in appears.keys{
            if Int(appears[key]!)%2 == 0{
            appears[key] = appears[key]!/2
            } else {
                appears[key] = appears[key]!/2 + 0.5
            }
        }
        return (appears.values.max()! - appears.values.min()!)
}
var answer2 = insertNewCharEfficient(string: string, times: 40)

print("Answer for part 2 is : \(answer2)")

//3724343376942
