var numbers: [Int] = []

for _ in 1...9 {
    numbers.append(Int(readLine()!)!)
}

let totalSum = numbers.reduce(0, +)
let twoNumSum = totalSum - 100

var firstIndex = -1
var secondIndex = -1

for i in 0..<numbers.count {
    for j in i+1..<numbers.count {
        if numbers[i] + numbers[j] == twoNumSum {
            firstIndex = i
            secondIndex = j
            break
        }
    }
    if firstIndex != -1 { break }
}

var result: [Int] = []
for i in 0..<numbers.count {
    if i != firstIndex && i != secondIndex {
        result.append(numbers[i])
    }
}

result.sort()

for number in result {
    print(number)
}