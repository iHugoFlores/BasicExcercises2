import UIKit

// Min
func min2(_ a: Int, _ b: Int) -> Int {
    return max(a, b)
}
print(min2(2, 5))

// Last Digit
func lastDigit(_ a: Int) -> Int {
    let numStr = String(a)
    if let number = Int(String(numStr.last!)) {
        return number
    }
    return 0
}
print(lastDigit(2))

// Prime Numbers
func divides(_ a: Int, _ b: Int) -> Bool {
    return a % b == 0
}

func countDivisors(_ a: Int) -> [Int] {
    func factor(_ number: Int) -> [Int] {
        if number == 1 {
            return []
        }
        
        var num=2;
        while !divides(number, num) {
            num += 1
        }
        return  [num] + factor(number / num)
    }
    return factor(a)
}

func isPrime(_ a: Int) -> Bool {
    let divisors = countDivisors(a)
    return divisors.count <= 1
}
print(isPrime(5))

// Reverse
func reverse(numbers a: [Int]) -> [Int] {
    return a.reversed()
}
print(reverse(numbers: [1,2,3]))

// Sum
func sum(_ a: [Int]) -> Int {
    return a.reduce(0){(curr, next) -> Int in curr + next}
}
print(sum([1,2,3]))

// Parse number
func parse(digit a: String) -> Int {
    if let number = Int(a) {
        return number
    }
    return -1
}
print(parse(digit: "22s"))

// Queue
func push(array arr: inout [Int], value val: Int) {
    arr.append(val)
}

func pop(array arr: inout [Int]) -> Int {
    return arr.popLast() ?? 0
}

var queueStr = [1,2,3]
print(queueStr)
push(array: &queueStr, value: 5)
print(queueStr)
print(pop(array: &queueStr))
print(queueStr)

// Stack
func stackPush(array arr: inout [Int], value val: Int) {
    push(array: &arr, value: val)
}

func stackTop(array arr: [Int]) -> Int {
    return arr.last ?? 0
}

func stackPop(array arr: inout [Int]) -> Int {
    return pop(array: &arr)
}
