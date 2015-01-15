// Playground - noun: a place where people can play

import UIKit

class MyClass {
    
    let name:String

    init(name:String = "匿名希望"){
        self.name = name
    }
    
    func hello() -> String {
        let msg = self.name + "です。ハロー"
        return msg
    }
}

let myObj = MyClass(name: "早川")
let message = myObj.hello()