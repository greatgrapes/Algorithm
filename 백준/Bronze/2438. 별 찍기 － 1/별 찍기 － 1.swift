let input = Int(readLine()!)!
(1...input).forEach {
    print(String(repeating: "*", count: $0))
}