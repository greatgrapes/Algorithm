func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }

let (num1, den1) = (input1[0], input1[1])
let (num2, den2) = (input2[0], input2[1])

let numerator = num1 * den2 + num2 * den1
let denominator = den1 * den2

let gcdValue = gcd(numerator, denominator)

print("\(numerator / gcdValue) \(denominator / gcdValue)")