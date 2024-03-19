let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }

for i in input2 {
    if i < input1[1] {
        print(i, terminator: " ")
    }
}