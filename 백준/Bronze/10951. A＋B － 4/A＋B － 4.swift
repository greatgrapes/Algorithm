while let sum = readLine() {
    print(sum.split(separator: " ").map { Int($0)! }.reduce(0, +))
}