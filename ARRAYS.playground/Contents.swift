import UIKit

// Max
func maxInArr() {
    let listOfNumbers = [1, 2, 3, 10, 100]
    print(listOfNumbers.max()!)
}
maxInArr()

// Odd
func oddInArr() {
    let listOfNumbers = [1, 2, 3, 10, 100]
    for i in listOfNumbers {
        if i % 2 != 0 {
            print(i)
        }
    }
}
oddInArr()

// Sum
func arrSum() {
    let listOfNumbers = [1, 2, 3, 10, 100]
    print(listOfNumbers.reduce(0){(sum, next) -> Int in sum + next})
}
arrSum()

//  Odd Index
func oddIndex() {
    let listOfNumbers = [1, 2, 3, 10, 100]
    for (index,item) in listOfNumbers.enumerated() {
        if index % 2 != 0 {
            print(item)
        }
    }
}
oddIndex()

// Going back
func goingBack() {
    var listOfNumbers: [Int] = [1, 2, 3, 10, 100]
    let reversed: [Int] = listOfNumbers.reversed()
    for i in reversed {
        print(i)
    }
}
goingBack()

// Sorting
func sorting() {
    var listOfNumbers = [1, 20, 3, 10, 100]
    let sorted = listOfNumbers.sorted(by: >)
    print(sorted)
}
sorting()

// Search
func arrSearch() {
    var listOfNumbers = [1, 20, 3, 10, 100]
    let x = 3
    if let found = listOfNumbers.firstIndex(of: x) {
        print("Yes")
    } else {
        print("No")
    }
}
arrSearch()

// Intersection
func intersection() {
    var common = [Int]()
    let listOfNumbers = [1, 2, 3, 10, 100]
    let otherNumbers = [5, 2, 3, 10, 13]
    otherNumbers.forEach{num in
        if let _ = listOfNumbers.firstIndex(of: num) {
            common.append(num)
        }
    }
    print(common)
}
intersection()

// Fibonacci
func fibonacci() {
    var n = 5
    var sequence = [1, 1]
    for i in 2...n {
        sequence.append(sequence[i - 1] + sequence[i - 2])
    }
    print(sequence)
}
fibonacci()
