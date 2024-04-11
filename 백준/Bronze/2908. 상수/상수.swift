let numbers = readLine()!.split(separator: " ").map(String.init)
let reversedNumbers = numbers.map { Int(String($0.reversed()))! }
print(reversedNumbers.max()!)