
import Foundation

var populationData = [5,4,3,5,1,1,2,1,2,1,3,2,3,4,5,1,2,4,3,2,5,1,4,2,1,1,2,5,4,4,4,1,5,4,5,2,1,2,5,5,4,1,3,1,4,2,4,2,5,1,3,5,3,2,3,1,1,4,5,2,4,3,1,5,5,1,3,1,3,2,2,4,1,3,4,3,3,4,1,3,4,3,4,5,2,1,1,1,4,5,5,1,1,3,2,4,1,2,2,2,4,1,2,5,5,1,4,5,2,4,2,1,5,4,1,3,4,1,2,3,1,5,1,3,4,5,4,1,4,3,3,3,5,5,1,1,5,1,5,5,1,5,2,1,5,1,2,3,5,5,1,3,3,1,5,3,4,3,4,3,2,5,2,1,2,5,1,1,1,1,5,1,1,4,3,3,5,1,1,1,4,4,1,3,3,5,5,4,3,2,1,2,2,3,4,1,5,4,3,1,1,5,1,4,2,3,2,2,3,4,1,3,4,1,4,3,4,3,1,3,3,1,1,4,1,1,1,4,5,3,1,1,2,5,2,5,1,5,3,3,1,3,5,5,1,5,4,3,1,5,1,1,5,5,1,1,2,5,5,5,1,1,3,2,2,3,4,5,5,2,5,4,2,1,5,1,4,4,5,4,4,1,2,1,1,2,3,5,5,1,3,1,4,2,3,3,1,4,1,1]

//my first solution was this one, but it took too long to run as it is an exponential growth, and i checked every item every time!
/*
func growth(populationData:  [Int], days: Int) -> Int {
    var internalTimers = populationData
    for k in 1...days{
        print(k)
        for i in 0..<internalTimers.count{
            if internalTimers[i] == 0{
                internalTimers[i] = 6
                internalTimers.append(8)
            } else {
                internalTimers[i] -= 1
            }
        }
    }
    return internalTimers.count
}
*/
// this is my second solution
var populationDict: [Int: Double] = [0:0, 1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0]

for item in populationData{
    populationDict[item]! += 1
}

func growthV2(populationData:  [Int:Double], days: Int) -> Double {
    var internalTimers = populationData
    var sum = 0.0
    for _ in 1...days{
      let cicleEnd: Double = internalTimers[0]!
        internalTimers[0] = 0.0
      
        for i in 1...8{
            internalTimers[i-1] = internalTimers[i]
        }
        
        internalTimers[6] = internalTimers[6]! + cicleEnd
        internalTimers[8] = cicleEnd
        
    }
    
    for value in internalTimers.values {
       sum += value
    }

    return sum
}

var result = growthV2(populationData: populationDict, days: 80)
print(result)
//350917


//part 2

var result2 = growthV2(populationData: populationDict, days: 256)
print(result2)

//1592918715629

