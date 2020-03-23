import UIKit

var numberOfBoys = 20
var numberOfGirls = 60

var total = Float(numberOfBoys + numberOfGirls)

var percentageBoys = String(format: "%.0f", Float(numberOfBoys) * 100 / total)
var percentageGirls = String(format: "%.0f", Float(numberOfGirls) * 100 / total)

print("Boys: \(percentageBoys), Girls: \(percentageGirls)")
