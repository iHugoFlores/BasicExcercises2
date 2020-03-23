import UIKit

// AVERAGE
func average() {
    let a: Double = 2.0
    let b: Double = 5.0
    print((a + b) / 2)
}
average()

// Weighted Average
func weightedAverage() {
    let finalsGrade: Double = 2.0
    let midtermGrade: Double = 4.0
    let projectGrade: Double = 3.0
    
    let grade = (finalsGrade * 0.5) + (midtermGrade * 0.2) + (projectGrade * 0.3)
    print(grade)
}
weightedAverage()

// Rounding
func rounding() {
    let number: Double = 2.1234
    let roundedNumber = Double(String(format: "%.1f", number))
    print(roundedNumber!)
}
rounding()

// Above average
func aboveAverage() {
    let grade1 = 7.0
    let grade2 = 9.0
    let grade3 = 5.0
    let yourGrade = 8.0
    
    let classAverage = (grade1 + grade2 + grade3 + yourGrade) / 4.0
    
    print(yourGrade > classAverage ? "above average" : "below average")
}
aboveAverage()
