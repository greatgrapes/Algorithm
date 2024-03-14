func factorial(N: Int) -> Int {
    if N <= 1 {
      return 1
    }
    
    
    return N * factorial(N: N - 1)
}
print(factorial(N: Int(readLine()!)!))