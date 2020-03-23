import UIKit

func calculatePerimeterAndArea(width widthV: Int, height heightV: Int, x xV: Int, y yV: Int) -> (Int, Int) {
    
    let yP = abs(heightV - yV)
    let xP = abs(widthV - xV)
    
    let perimeter = widthV + heightV + xV + yV + yP + xP
    var area = widthV * heightV
    
    if xV > widthV || yV > heightV {
        area = area + (yP * xP)
        return (perimeter, area)
    }
    
    area = area - (yP * xP)
    return (perimeter, area)
}

let width = 10
let height = 20

let x = 2
let y = 3

let (perimeter, area) = calculatePerimeterAndArea(width: width, height: height, x: x, y: y)

print(perimeter)
print(area)

