import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

let file = FileIO()

let testcase = file.readInt()

for _ in 0..<testcase {
    let candidatorCount = file.readInt()
    var scores = [[Int]]()
    for _ in 0..<candidatorCount {
        let scoreInput = [file.readInt(), file.readInt()]
        scores.append(scoreInput)
    }
    scores.sort { $0[0] < $1[0] }
    
    var interviewCutline = scores[0][1]
    var passedCount = 1
    for candidator in 1..<candidatorCount {
        if scores[candidator][1] < interviewCutline {
            interviewCutline = scores[candidator][1]
            passedCount += 1
            
            if interviewCutline == 1 {
                break
            }
        }
    }
    print(passedCount)
}