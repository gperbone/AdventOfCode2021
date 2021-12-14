
import Foundation

let inputData : [[Int]] = [[8,5,7,7,2,4,5,5,4,7],
                       [1,6,5,4,3,3,3,6,5,3],
                       [5,3,6,5,6,3,3,7,8,5],
                       [1,3,3,3,2,4,3,2,2,6],
                       [4,2,7,2,3,8,5,1,6,5],
                       [5,6,8,8,3,2,8,4,3,2],
                       [3,1,7,5,6,3,4,2,5,4],
                       [6,7,7,5,1,4,2,2,2,7],
                       [6,1,5,2,7,2,1,4,1,5],
                       [2,6,7,8,2,2,7,3,2,5]]

var input = inputData
var willHighlight = [(x:Int, y: Int)]()

var highlighted = 0

func anyNewAboveNine(input: [[Int]]) -> Bool{

    
    willHighlight.removeAll()

    for i in 0..<input.count{
        for j in 0..<input[0].count{
            if input[i][j] == 10{
                willHighlight.append((i,j))
            }
        }
    }
  
    

    return (willHighlight.count > 0)

}

func oneStep(input: inout [[Int]]){
    for i in 0..<input.count{
        for j in 0..<input[0].count{
                input[i][j] += 1
        }
    }

    while anyNewAboveNine(input: input) {
        for pair in willHighlight{
            let i = pair.x
            let j = pair.y

            
            if i-1 >= 0{
                input[i-1][j] = (input[i-1][j] > 9) ? 10 : input[i-1][j] + 1
            }
            if j-1 >= 0 && i-1 >= 0{
                input[i-1][j-1] = (input[i-1][j-1] > 9) ? 10 : input[i-1][j-1] + 1
            }
            if j+1 < input[0].count && i-1 >= 0{
                input[i-1][j+1] = (input[i-1][j+1]  > 9) ? 10 : input[i-1][j+1] + 1
                }
            if i+1 < input.count{
                input[i+1][j] = (input[i+1][j]  > 9) ? 10 : input[i+1][j] + 1
            }
            if j-1 >= 0 && i+1 < input.count{
                input[i+1][j-1] = (input[i+1][j-1] > 9) ? 10 : input[i+1][j-1] + 1
            }
            if j+1 < input[0].count && i+1 < input.count{
                input[i+1][j+1] = (input[i+1][j+1] > 9) ? 10 : input[i+1][j+1] + 1
            }
            if j-1 >= 0{
                input[i][j-1] = (input[i][j-1]  > 9) ? 10 : input[i][j-1] + 1
            }
            if j+1 < input[0].count{
                input[i][j+1] = (input[i][j+1]  > 9) ? 10 : input[i][j+1] + 1
            }
           
        }
    
        
        for entry in willHighlight{
            let i = entry.x
            let j = entry.y
            input[i][j] = -1000
        }
        
        highlighted += willHighlight.count
        
    }

    
    
    for i in 0..<input.count{
        for j in 0..<input[0].count{
            if input[i][j] > 9 || input[i][j] < 0 {
                input[i][j] = 0
            }
        }
    }
   

}

func doSteps(times: Int){
    for _ in 0..<times{
        willHighlight.removeAll()
        oneStep(input: &input)
    }
}

doSteps(times:100)

print(highlighted)
//1702

//part2
input = inputData
var count = 0
var sync : Int = 0
var numberOfOctopusses = input.count * input[0].count

func doStepsUntilSync(times: Int){
    for iteraction in 0..<times{
        willHighlight.removeAll()
        oneStep(input: &input)
        
        count = 0
        for i in 0..<input.count{
            for j in 0..<input[0].count{
                if input[i][j] == 0 {
                    count += 1
                }
            }
        }
        if count == numberOfOctopusses{
            sync = iteraction
            break
        }
    }
}

doStepsUntilSync(times: 500)
print(sync + 1)
