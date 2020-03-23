import UIKit

// Encode
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
var message = "hello world"

func encodeMsg(_ input: String) -> String {
    var res = ""
    for chr in input {
        if chr == " " {
            res += String(chr)
            continue
        }
        if let enc = code[String(chr)] {
            res += enc
        }
    }
    return res
}

print(encodeMsg(message))

// Decode
message = "uijt nfttbhf jt ibse up sfbe"

func decodeMsg(_ input: String) -> String {
    var res = ""
    for chr in input {
        if chr == " " {
            res += String(chr)
            continue
        }
        if let dec = code.first(where: { $0.value == String(chr) })?.key {
            res += dec
        }
    }
    return res
}

print(decodeMsg(message))

// Names
var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

let firstNames = people.map{ $0["firstName"]! }
print(firstNames)

// Best Scores
var people2: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

var maxScore: [String:Any] = [
    "firstName": "",
    "lastName": "",
    "score": 0
]

people2.forEach{pep in
    if  let currScore: Int = pep["score"] as? Int,
        let maxScoreV: Int = maxScore["score"] as? Int
       {
        if currScore > maxScoreV {
            maxScore["score"] = currScore
            maxScore["firstName"] = pep["firstName"]!
        }
    }
}

print(maxScore)

// Frequency
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var nbrFreq: [Int: Int] = [:]

numbers.forEach{
    if let prevFreq = nbrFreq[$0] {
        nbrFreq[$0] = prevFreq + 1
    } else {
        nbrFreq[$0] = 1
    }
}

print(nbrFreq)
