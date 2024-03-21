import Foundation

let word = readLine()!
let index = Int(readLine()!)!

print(word[word.index(word.startIndex, offsetBy: index - 1)])