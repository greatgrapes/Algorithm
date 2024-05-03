struct Stack {
    private var stack: [Int] = []

    mutating func push(_ X: Int) {
        stack.append(X)
    }
    
    mutating func pop() -> Int {
        return stack.isEmpty ? -1 : stack.removeLast()
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func empty() -> Int {
        return stack.isEmpty ? 1 : 0
    }
    
    func top() -> Int {
        return stack.last ?? -1
    }
}

var stack = Stack()

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")    
    switch input[0] {
    case "push":
        stack.push(Int(input[1])!)
    case "pop":
        print(stack.pop())
    case "size":
        print(stack.size())
    case "empty":
        print(stack.empty())
    case "top":
        print(stack.top())
    default:
        break
    }
}
