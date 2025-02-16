var oddNum: [Int] = []

for _ in 1...7 {
    let input = Int(readLine()!)!
    if input % 2 == 1 {
        oddNum.append(input)
    }
}


if !oddNum.isEmpty {
    oddNum.sort()
    let sum = oddNum.reduce(0, +)
    let minValue = oddNum[0]
    
    print("\(sum)")
    print("\(minValue)")
} else {
    print("-1")
}