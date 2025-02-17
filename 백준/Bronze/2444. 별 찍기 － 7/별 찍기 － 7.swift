let input = Int(readLine()!)!

for i in 1...input {
    let star = String(repeating: " ", count: input - i) + String(repeating: "*", count: 2 * i - 1)
    print(star)
}

for i in 1..<input {
    let star = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (input - i) - 1)
    print(star)
}
