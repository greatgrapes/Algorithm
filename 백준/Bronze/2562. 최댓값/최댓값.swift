var array: [Int] = []

for _ in 1...9 {
    array.append(Int(readLine()!)!)
}

let max = array.max()!
print(max)
print(array.firstIndex(of: max)! + 1)