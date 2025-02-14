let input = readLine()!.split(separator: " ").map { Int($0)! }

let a = input[0], b = input[1], c = input[2]

var prizeMoney = 0

if a == b, b == c {
    prizeMoney = 10_000 + a * 1_000
} else if a == b || a == c {
    prizeMoney = 1_000 + a * 100
} else if b == c {
    prizeMoney = 1_000 + b * 100
} else {
    prizeMoney = max(a, b, c) * 100
}

print(prizeMoney)