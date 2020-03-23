import UIKit

// Chalkboard
func chalkBoar() {
    for _ in 1...10 {
        print("I will not skip the fundamentals!")
    }
}
chalkBoar()

// Squares
func squares(n value: Int) {
    for i in 1...value {
        print(i * i)
    }
}
squares(n : 4)

// Powers of two
func powersOfTwo(n value: Int) {
    var i: Int = 1
    while (i * i) < value {
        print(i * i)
        i += 1
    }
}
powersOfTwo(n : 100)

// Square
func drawSquare(n value: Int) {
    let row = Array.init(repeating: "*", count: value).joined()
    for _ in 1...value {
        print(row)
    }
}
drawSquare(n : 10)

// Rectange
func drawRectangle(n nV: Int, m mV: Int) {
    let row = Array.init(repeating: "*", count: nV).joined()
    for _ in 1...mV {
        print(row)
    }
}
drawRectangle(n : 20, m: 2)

// Triangle
func drawTriangle(n nV: Int) {
    for i in 1...nV {
        print(Array.init(repeating: "*", count: i).joined())
    }
}
drawTriangle(n : 5)

// Pyramid
func drawPyramid(n nV: Int) {
    let len = (nV * 2) - 1
    var rawRow = Array.init(repeating: " ", count: len)
    let midPos = (len - 1) / 2
    for i in 0...(nV - 1) {
        let start = midPos - i
        let end = midPos + i
        rawRow[start] = "*"
        rawRow[end] = "*"
        print(rawRow.joined())
    }
}
drawPyramid(n : 5)

// Leap Years
func leapYears(n nV: Int, start lY: Int) {
    var i = 0
    var next = lY
    while i < nV {
        if next % 100 == 0 && next % 400 != 0 {
            next += 1
            continue
        }
        
        if next % 4 != 0 {
            next += 1
            continue
        }
        
        print(next)
        next += 1
        i += 1
    }
}
leapYears(n : 5, start: 2000)

// GCD
func GCD(a aV: Int, b bV: Int) -> Int {
    if aV == 0 {
        return bV
    }
    return GCD(a: bV % aV, b: aV)
}
print(GCD(a : 24, b: 18))

// Factoring Numbers
func factoringNumbers(n nV: Int) {
    
    func factor(_ number: Int) -> [String] {
        if number == 1 {
            return []
        }
        
        var num=2;
        while number % num != 0 {
            num += 1
        }
        return  [String(num)] + factor(number / num)
    }
    
    let res = factor(nV).joined(separator: " * ")
    
    print("\(nV) = \(res)")
}
factoringNumbers(n : 15)
