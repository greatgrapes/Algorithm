
let X = Int(readLine()!)!

var n = 1, currentEnd = 1

while currentEnd < X {
    n += 1
    currentEnd += n
}

let offset = X - (currentEnd - n)
let (numerator, denominator) = n % 2 == 1 ? (n - offset + 1, offset) : (offset, n - offset + 1)
print("\(numerator)/\(denominator)")