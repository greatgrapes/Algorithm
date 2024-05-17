import Foundation

func distance(x1: Int, y1: Int, x2: Int, y2: Int) -> Double {
    return sqrt(Double((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)))
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0], y1 = input[1], r1 = input[2]
    let x2 = input[3], y2 = input[4], r2 = input[5]
    
    let d = distance(x1: x1, y1: y1, x2: x2, y2: y2)
    
    if d == 0 && r1 == r2 {
        print(-1)
    } else if d == Double(r1 + r2) || d == Double(abs(r1 - r2)) {
        print(1)
    } else if d > Double(r1 + r2) || d < Double(abs(r1 - r2)) {
        print(0)
    } else {
        print(2)
    }
}