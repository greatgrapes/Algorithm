let inputNum = Int(readLine()!)!
if inputNum <= 100 && inputNum >= 90 { print("A") }
else if inputNum < 90 && inputNum >= 80 {print("B") }
else if inputNum < 80 && inputNum >= 70 {print("C")}
else if inputNum < 70 && inputNum >= 60 {print("D")}
else {print("F")}