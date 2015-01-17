// Playground - noun: a place where people can play

import UIKit

// chapter 4-1: オプショナル
// optional chaining
class Player {
    
    var magic:Magic?
    
    init(spell:String?) {
        if(spell != nil) && (spell != "") {
            self.magic = Magic(spell:spell!)
        }
    }
}

class Magic {
    
    struct Stone {
        var color:String
        var spell:String
    }
    
    var magicPower:Int
    var magicStone:Stone
    
    init(spell:String){
        self.magicPower = countElements(spell) / 2
        let index = Int(arc4random_uniform(3))
        let stoneColor = ["red", "blue", "green"][index]
        self.magicStone = Stone(color: stoneColor, spell: spell)
    }
    
    func doMagic() -> Stone? {
        if magicPower == 0 {
            magicPower = 3
            return nil
        } else {
            magicPower--
            return self.magicStone
        }
    }
}

var user:Player = Player(spell: "puipui")

for _ in 1...5 {
    var mp = user.magic?.magicPower as Int!
    var spell = user.magic?.doMagic()?.spell as String!
    print("パワーは\(mp), ")
    println("呪文は\(spell)")
}


// chapter 4-2: 関数
// function dice
func dice() -> Int {
    return 1 + Int(arc4random_uniform(6))
}

for _ in 1...10 {
    print("\(dice()), ")
}

// function parameters
func plus(a:Double, b:Double) -> Double {
    return a + b
}

println(plus(5, 6))

// function parameters more
func sum(numbers:Double...) -> Double {
    var total:Double = 0.0
    for num in numbers {
        total += num
    }
    return total
}

sum(4,3,5,2,8,6)

// function parameter default
func message(who:String = "お客") -> String {
    return who + "様、こんにちは"
}

message()
message(who: "田中")

func calc(a:Int, b:Int=10, c:Int=10) -> Int {
    return a+b+c
}

calc(5)
calc(5, b: 1)
calc(5, b:1, c:2)

// function extParamName
func bmi(weight kg:Double, height cm:Double) -> Double {
    if cm == 0 { return -1 }
    var result = kg / pow(cm*0.01, 2)
    return round(result*10) / 10
}

bmi(weight: 56.5, height: 166)

// function extParamName omission
func kingaku(#tanka:UInt, #kosu:UInt) -> UInt {
    return tanka * kosu
}
kingaku(tanka: 250, kosu: 3)

// function array
func arrayByInt(#array:Array<Int>, #num:Int) -> Array<Int> {
    var result = Array<Int>()
    for value in array {
        result.append(value * num)
    }
    return result
}
arrayByInt(array: [1,2,3], num:3)

// function parameter tuple
func result(#kokugo:Int, #sansu:Int, #eigo:Int) -> (total:Int, average:Double) {
    let total = kokugo + sansu + eigo
    var average = Double(total) / 3
    return (total, average)
}
let exam = result(kokugo: 65, sansu: 68, eigo: 72)
exam.total
exam.average

// function overload
func calc(#a:Int, #b:Int) -> Int {
    return a+b
}

func calc(#c:Int, #d:Int) -> Int {
    return c*d
}

func calc(#a:Int, #b:Int, #c:Int) -> Int {
    return (a+b)*c
}

calc(a: 2, b: 3)
calc(c: 2, d: 3)
calc(a: 2, b: 3, c: 4)

// function overload 2
func heikin(#array:[Double]) -> Double {
    var total:Double = 0.0
    for v in array {
        total += v
    }
    let count = Double(array.count)
    let ave = round(total/count*10)/10
    return ave
}

func heikin(#numbers:Double ...) -> Double {
    return heikin(array: numbers)
}

heikin(array: [5, 6, 7.5])
heikin(numbers: 5, 6, 7.5)

// function generics
func makeArray<T>(items:T ...) -> [T] {
    var array = [T]()
    for item in items {
        array += [item]
    }
    return array
}

makeArray(3,5,7,2,8)
makeArray("red", "blue", "green")

// chapter 4-3: 関数オブジェクト
// function object
func calc1(#tanka:Int, #kosu:Int) -> Int {
    return tanka * kosu
}
let myCalc = calc1
myCalc(tanka: 280, kosu: 4)

// function object argument
func hello(user:String) -> String {
    return "\(user)さん、ハロー"
}

func bye(user:String) -> String {
    return "\(user)さん、バイ"
}

func command(someFunc:String -> String, user:String) -> String {
    let msg = someFunc(user)
    return msg
}

let cmds = [hello, bye]
command(cmds[0], "田中")
command(cmds[1], "佐藤")

// chapter 4-4: クロージャ
// closure
let myFunc = {(a:Int, b:Int) -> Int in
    return a+b
}
myFunc(1,2)

let myFunc2:(Int, Int) -> Int = {(a:Int, b:Int) -> Int in
    return a+b
}
myFunc2(1,2)

// closure map
let numbers = [4,7,2,9]
let array1 = map(numbers, {(let v:Int) -> Int in
        return v*2
    })

let array2 = map(numbers){(let v:Int) -> Int in
        return v*2
    }

let array3 = map(numbers){v in v*2}
array3

let array4 = map(numbers){$0*2}
array4

// closure dicMap
func dicMap(var dic:Dictionary<String, Int>, closure:(String, Int) -> (String, Int)) -> Dictionary<String, Int> {
    for (key, value) in dic {
        let(theKey, newValue) = closure(key, value)
        dic[theKey] = newValue
    }
    return dic
}

let abcDic = ["a":3, "b":4, "c":9]
let result = dicMap(abcDic, {(key:String, value:Int) -> (String, Int) in
    return (key, value*2)
    })
let result2 = dicMap(abcDic){($0, $1*3)}
result2

let result3 = map(abcDic){[$0: $1*4]}
result3

// closure static var
func battery(capacity:Int) -> (Int) -> Int {
    var stock = capacity
    func use(volume:Int) -> Int {
        if(stock > volume) {
            stock -= volume
        } else {
            stock = 0
        }
        return stock
    }
    return use
}

let battery100 = battery(100)
battery100(60)
battery100(30)
battery100(20)



