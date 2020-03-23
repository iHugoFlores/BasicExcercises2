import UIKit

var x = 4
var y = 4
var lowX = 1
var lowY = 1
var highX = 3
var highY = 3

let insideH = x >= lowX && x <= highX
let insideV = y >= lowY && y <= highY

if insideH && insideV {
    print("inside")
} else {
    print("not inside")
}
