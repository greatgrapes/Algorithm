let input = readLine()!.split(separator: " ").map { Int($0)! }
var hour = input[0]
var min = input[1] - 45

if min < 0 {
    hour -= 1
    min += 60
}

if hour < 0 {
    hour += 24
}

print(hour, min)