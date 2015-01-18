// Playground - noun: a place where people can play

import UIKit

protocol GameProtocol {
    var gamePoint:Int { get }
    func hit()
    func miss()
}

class Game {
    final func gameHit(){
        let times = arc4random() % 3
        if times == 0 {
            miss()
        } else {
            for _ in 0...times {
                hit()
            }
        }
    }
    
    func hit(){}
    func miss(){}
}

class MyGame:Game, GameProtocol {
    private var total = 0

    var gamePoint:Int {
        get {
            return total
        }
    }
    
    override func hit() {
        total += 10
        println("ヒット")
    }
    
    override func miss() {
        total /= 2
        println("ミス")
    }
}

let myGameObj = MyGame()

myGameObj.gameHit()
myGameObj.gamePoint
myGameObj.gameHit()
myGameObj.gamePoint
myGameObj.gameHit()
myGameObj.gamePoint
