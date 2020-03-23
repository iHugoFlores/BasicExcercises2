import UIKit

var a = 2
var b = 3
var c = 1

func checkValue() {
    if a == b || b == c || a == c {
        print("At least two variables have the same value")
        return
    }

    print("All the values are different")
}

checkValue()
