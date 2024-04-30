func findN(A: Int, B: Int, N: Int) -> Int {
    var remainder = A % B
    var n = 0

    for _ in 1...N {
        remainder *= 10
        n = remainder / B
        remainder %= B
    }

    return n
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let A = input[0]
let B = input[1]
let N = input[2]

let result = findN(A: A, B: B, N: N)
print(result)