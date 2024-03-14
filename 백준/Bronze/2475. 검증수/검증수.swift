// 1
let input = readLine()!.split(separator: " ").map { Int($0)! }
func calculateNum(a: Int, b: Int, c: Int, d: Int, e: Int) -> Int {
    return ((a*a) + (b*b) + (c*c) + (d*d) + (e*e)) % 10
}
let result = calculateNum(a: input[0], b: input[1], c: input[2], d: input[3], e: input[4])
print(result)

// 2
//let input = readLine()!.split(separator: " ").map { Int($0)! * Int($0)! }.reduce(0, +)
//
//print(input % 10)
