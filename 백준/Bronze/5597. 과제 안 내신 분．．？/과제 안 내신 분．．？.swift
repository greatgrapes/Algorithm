var allStudents: [Int] = []
var submittedStudents: [Int] = []

for i in 1...30 {
    allStudents.append(i)
}

for _ in 1...28 {
    if let numStr = readLine(), let num = Int(numStr) {
       submittedStudents.append(num)
    }
}

var notSubmittedStudents: [Int] = []

for student in allStudents {
    if !submittedStudents.contains(student) {
        notSubmittedStudents.append(student)
    }
}
let sorted = notSubmittedStudents.sorted()

for student in sorted {
    print(student)
}