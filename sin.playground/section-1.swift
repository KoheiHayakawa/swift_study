// Playground - noun: a place where people can play

import UIKit

for kakudo in 0..<360 {
    let rad = Double(kakudo) * M_PI / 180
    let y1 = sin(rad)
    let y2 = sin(rad * 10)
    let y3 = y1 + y2
    let y4 = y1 * y2
}
