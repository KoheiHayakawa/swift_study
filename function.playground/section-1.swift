// Playground - noun: a place where people can play

import UIKit

func calc(tanka: Int = 0, kosu:Int = 1) -> Int {
    let price = tanka * kosu
    return price
}

let ans = calc(tanka: 2400, kosu: 3)
let ans2 = calc(tanka: 100, kosu: 3)