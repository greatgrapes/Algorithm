enum LeapYear {
    case yes
    case no
}

func isLeapYear(year:Int) -> LeapYear {
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) {
        return .yes
    } else {
        return .no
    }
}

if let input = readLine(), let inputYear = Int(input) {
    let result = isLeapYear(year: inputYear)
    switch result {
    case .yes:
        print("1")
    case .no:
        print("0")
    }
}