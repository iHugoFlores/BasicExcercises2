import UIKit

func calculateNumberOfPixels(width widthV: Int, height heightV: Int) -> Int {
    return widthV * heightV
}

let width = 10
let height = 20

let numberOfPixels = calculateNumberOfPixels(width: width, height: height)
