let inputT = Int(readLine()!)!

for _ in 1...inputT {
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    print(arr[0] + arr[1])
}