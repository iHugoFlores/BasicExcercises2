import UIKit

func swap(a aV: inout Int, b bV: inout Int) {
    let aI = aV
    aV = bV
    bV = aI
}

var a = 2
var b = 3

swap(a: &a, b: &b)

print("\(a) \(b)")
