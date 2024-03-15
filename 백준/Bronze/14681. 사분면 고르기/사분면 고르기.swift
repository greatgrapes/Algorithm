let firstNum = Int(readLine()!)!
let secondNum = Int(readLine()!)!

func coordinateCheck(coordinate: (Int, Int)) -> String {
    let (x, y) = coordinate

    switch (x, y) {
    case (let x, let y) where x > 0 && y > 0:
        return "1"
    case (let x, let y) where x < 0 && y > 0:
        return "2"
    case (let x, let y) where x < 0 && y < 0:
        return "3"
    case (let x, let y) where x > 0 && y < 0:
        return "4"
    default:
        break
    }
    return ""
}
let result = coordinateCheck(coordinate: (firstNum, secondNum))
print(result)
