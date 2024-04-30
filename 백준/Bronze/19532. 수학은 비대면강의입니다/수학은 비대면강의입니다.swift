func solveEquations(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int) -> (Int, Int) {
    let denominator = a * e - b * d
    let x = (c * e - b * f) / denominator
    let y = (a * f - c * d) / denominator
    return (x, y)
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, c, d, e, f) = (input[0], input[1], input[2], input[3], input[4], input[5])

let solution = solveEquations(a: a, b: b, c: c, d: d, e: e, f: f)

print("\(solution.0) \(solution.1)")