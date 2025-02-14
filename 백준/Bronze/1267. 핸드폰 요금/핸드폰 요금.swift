import Foundation

let n = Int(readLine()!)!
let callTimes = readLine()!.split(separator: " ").map { Int($0)! }

var youngsikCost = 0
var minsikCost = 0

for time in callTimes {
    youngsikCost += (time / 30 + 1) * 10
    
    minsikCost += (time / 60 + 1) * 15
}

if youngsikCost < minsikCost {
    print("Y \(youngsikCost)")
} else if youngsikCost > minsikCost {
    print("M \(minsikCost)")
} else {
    print("Y M \(youngsikCost)")
}