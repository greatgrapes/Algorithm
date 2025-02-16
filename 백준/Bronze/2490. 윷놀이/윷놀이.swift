for _ in 1...3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let zeroCount = input.filter { $0 == 0 }.count
    
    let result: String
    switch zeroCount {
    case 1: result = "A"
    case 2: result = "B"
    case 3: result = "C"
    case 4: result = "D"
    case 0: result = "E"
    default: result = ""
    }
    
    print(result)
}
