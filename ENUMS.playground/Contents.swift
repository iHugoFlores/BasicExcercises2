import UIKit

// Rock, Paper, Scissors
enum HandShape {
    case rock
    case paper
    case scissors
}
enum MatchResult {
    case win
    case draw
    case lose
}
func match(_ hand1: HandShape, _ hand2: HandShape) -> MatchResult {
    if hand1 == HandShape.paper && hand2 == HandShape.rock
        || hand1 == HandShape.rock && hand2 == HandShape.scissors
        || hand1 == HandShape.scissors && hand2 == HandShape.paper {
        return MatchResult.win
    }
    if hand1 == HandShape.paper && hand2 == HandShape.scissors
        || hand1 == HandShape.rock && hand2 == HandShape.paper
        || hand1 == HandShape.scissors && hand2 == HandShape.rock {
        return MatchResult.lose
    }
    return MatchResult.draw
}

// Min Max
func minMax(_ a: Int, _ b: Int) -> (max: Int, min: Int) {
    return (max: max(a, b), min: min(a, b))
}

// Fractions
func fractions(_ a: (Int, Int), _ b: (Int, Int)) -> (Int, Int) {
    return (1,2)
}

// Money
enum CoinType {
    case penny
    case quarter
}

var moneyArray:[(Int,CoinType)] = [
    (2,.penny),
    (3,.quarter)
]
var total = 0.0
for coins in moneyArray {
    if coins.1 == CoinType.penny {
        total += (Double(coins.0) * 0.01)
    } else {
       total += (Double(coins.0) * 0.25)
    }
}
