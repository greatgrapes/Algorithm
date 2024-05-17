import Foundation

let L = Int(readLine()!)!
var S = readLine()!.split(separator: " ").map { Int($0)! }
let n = Int(readLine()!)!

S.sort()

var result = 0
var start = 0
var end = 0

var containN = false
// 집합 S에 속하지 않으면서, n을 포함하는 구간 체크
for (index, value) in S.enumerated() {
    if value == n {
        containN = true
        break
    } else if value > n {
        end = value - 1

        // 첫 번째 원소가 n보다 크면, 좋은 구간은 1부터 시작
        if index == 0 {
            start = 1
        } else {
            start = S[index - 1] + 1
        }
        break
    }
}

// n 포함 좋은 구간의 개수 계산
if containN {
    print(0)
} else {
    result = (n - start) * (end - n + 1) + (end - n)
    print(result)
}