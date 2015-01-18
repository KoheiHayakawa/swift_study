// Playground - noun: a place where people can play

import UIKit

class Human {
    let name:String
    var log:Double = 0.0
    
    init(name:String) {
        self.name = name
    }
    
    func walk(km:Double){
        log += km
        println("\(km)km歩きます")
    }
    
    func kmlog(){
        println("\(log)km進みました")
    }
}

class Hero:Human {
    let heroName:String
    
    init(name:String, heroName:String){
        self.heroName = heroName
        super.init(name: name)
    }
    
    func fly(km:Double){
        log += km
        println("\(km)km飛びます")
    }
    
    override func walk(km: Double) {
        log += km * 10
        println("\(km)kmx10倍歩きます")
    }
}

let myHero = Hero(name: "クラークケント", heroName: "スーパーマン")
myHero.name
myHero.heroName

myHero.walk(2.195)
myHero.fly(40)
myHero.kmlog()