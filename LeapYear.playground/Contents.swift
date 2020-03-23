import UIKit

func isLeapYear(_ year: Int) {
    let notLeap = "Not a leap year!"
    let leap = "Leap year!"
    
    if year % 100 == 0 && year % 400 != 0 {
        print(notLeap)
        return
    }
    
    if year % 4 != 0 {
        print(notLeap)
        return
    }
    
    print(leap)
}

isLeapYear(1920)
