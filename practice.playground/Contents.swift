import UIKit

class CameraA {
    var color = "Black"
}

struct CameraB {
    var color = "Black"
}

func printCameraColor() {
    let str = """
Camera A (my: \(myCameraA.color), yours: \(yourCameraA.color))
Camera B (my: \(myCameraB.color). yours: \(yourCameraB.color))
"""
    print(str)
}

var myCameraA = CameraA()
var yourCameraA = myCameraA

var myCameraB = CameraB()
var yourCameraB = myCameraB

printCameraColor()


print("----- myCamera 색을 변경합니다. -----")

myCameraA.color = "White"
myCameraB.color = "White"

printCameraColor()
