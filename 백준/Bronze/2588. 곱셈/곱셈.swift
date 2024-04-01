import Foundation
var firstNum = Int(readLine()!)!
var secondNum = Int(readLine()!)!

var A = (firstNum*(secondNum%10))
var B = (firstNum*((secondNum%100)/10))
var C = (firstNum*(secondNum/100))
var D = (firstNum*secondNum)
print(A)
print(B)
print(C)
print(D)
