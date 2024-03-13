let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let A = input[0]
let B = input[1]

func calculateResult(A: Int, B: Int) -> Int {
    return (A+B) * (A-B)
}

let result = calculateResult(A: A, B: B)
print(result)
