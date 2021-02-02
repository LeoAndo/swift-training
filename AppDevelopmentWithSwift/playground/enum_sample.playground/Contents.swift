import UIKit


var ret = CompassPoint.north
print(ret)

var ret2:CompassPoint = .west
print(ret2)

// switchでenumの値を判定
switch ret {
    case .north:
    print("north!")
    case .east:
    print("east!")
    case .south:
    print("south!")
    case .west:
    print("west!")
}
// if文でenumの値を判定
if ret2 == .west {
    print("west!!")
}

enum CompassPoint {
    case north
    case east
    case south
    case west
}
// 1 Lineで宣言可能.
enum CompassPoint2 {
    case north, east, south, west
}
