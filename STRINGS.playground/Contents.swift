import UIKit

// Full name
func fullName() {
    let firstName = "Hugo"
    let lastName = "Flores"
    
    print(firstName + " " + lastName)
}
fullName()

// Sum
func sumFormatted() {
    let a = 12
    let b = 4
    
    let namedformattedSum = "\(a) + \(b) = \(a + b)"
    print(namedformattedSum)
}
sumFormatted()

// Replace
func replace() {
    let aString = "Replace the letter e with *"
    let replacedString = aString.replacingOccurrences(of: "e", with: "*")
    print(replacedString)
}
replace()

// Reverse
func reverseStr() {
    var aString: String = "Replace the letter e with *"
    var reverseStringC = Array(aString)
    reverseStringC.reverse()
    var reverseString = String(reverseStringC)
    print(reverseString)
}
reverseStr()

// Palindrome
func isPalindrome() {
    var aString = "anutforajaroftuna"
    var reverseStringC = Array(aString)
    reverseStringC.reverse()
    var reverseString = String(reverseStringC)
    print(reverseString == aString)
}
isPalindrome()

// Words
func multipleWords() {
    let problem = "split this string into words and print them on separate lines"
    let stringArr = problem.split(separator: " ")// Array(problem)
    stringArr.forEach{word in print(word)}
}
multipleWords()

// Long word
func longestWord() {
    let problem = "find the longest word in the problem description"
    let stringArr = problem.split(separator: " ")// Array(problem)
    var longest: String = ""
    stringArr.forEach{word in
        if word.count > longest.count {
            longest = String(word)
        }
    }
    print(longest)
}
longestWord()
