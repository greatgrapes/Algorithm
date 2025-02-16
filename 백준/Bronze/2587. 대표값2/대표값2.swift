var addNum = 0
var centerValue: [Int] = []

for _ in 1...5 {
    let input = Int(readLine()!)!
    addNum += input
    //중앙값
    centerValue.append(input)
    centerValue.sort()
}

print("\(addNum / 5)")
print("\(centerValue[2])")

