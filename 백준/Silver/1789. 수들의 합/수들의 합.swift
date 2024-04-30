let S = Int(readLine()!)!

var sum = 0
var n = 0

while true {
    n += 1
    sum += n
    if sum > S {
        n -= 1
        break
    }
}
print(n)