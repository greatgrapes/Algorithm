let input = readLine()!
var result: [Int] = Array(repeating: 0, count: 26)

for char in input {
    result[Int(char.asciiValue! - 97)] += 1
}

print(result.map{String ($0)}.joined(separator: " "))