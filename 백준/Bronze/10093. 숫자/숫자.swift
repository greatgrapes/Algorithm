let input = readLine()!.split(separator: " ").map { Int64($0)! }
let firstNum = input[0]
let secondNum = input[1]

let minNum = min(firstNum, secondNum)
let maxNum = max(firstNum, secondNum)

if minNum == maxNum {
    print(0)
} else {
    let numCount = maxNum - minNum - 1
    
    print(numCount)

    for i in (minNum + 1)..<maxNum {
        print(i, terminator: " ")
    }
}

