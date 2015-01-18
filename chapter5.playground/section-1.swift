// Playground - noun: a place where people can play

import UIKit

// chapter 5-1: クラス定義
// class computed property
class Circle {
    
    var radius:Double = 1.0
    
    var area:Double {
        get{
            return radius * radius * M_PI
        }
        set (menseki) {
            radius = sqrt(menseki / M_PI)
        }
    }
}

var myCircle = Circle()
myCircle.radius
myCircle.area

myCircle.area *= 2
myCircle.radius
myCircle.area

// class property observer
class Player {
    
    var times = 0
    var level:Int {
        willSet {
            if level != newValue {
                println("\(level) -> \(newValue)")
            }
        }
        didSet {
            if oldValue != level {
                println("\(++times)回目の更新")
            }
        }
    }
    
    init() {
        level = 0
    }
}

var thePlayer = Player()
thePlayer.level = 10
thePlayer.level = 10
thePlayer.level = 15