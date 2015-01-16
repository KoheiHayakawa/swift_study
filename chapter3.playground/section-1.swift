// Playground - noun: a place where people can play

import UIKit

// chapter 3-1: String
// string to number
let kakaku = "240"
let kosu = "2"
let kingaku = kakaku.toInt()! * kosu.toInt()!

// string to float
let r = 120
let pi = "3.14"
let ensyu = Float(2*r) * (pi as NSString).floatValue

// number to string
let weight = 135.5
println(weight.description)

// string index rangeOfString
let str = "あいうえおカキクケコ"
let word = "うえお"
let range:Range? = str.rangeOfString(word)
if let theRange = range {
    let start:String.Index = theRange.startIndex
    let end:String.Index = theRange.endIndex
    
    println(str[theRange])
    println(str[start])
    println(str[end])
    println(str[start..<end])
}

// string index advance
let str2 = "あいうえおカキクケコ"
let start2 = advance(str2.startIndex, 4)
let end2 = advance(start2, 3)
let pickupStr = str[start2..<end2]

// string substring
let toIndex = (str as NSString).substringToIndex(4)
let fromIndex = (str as NSString).substringFromIndex(5)
let range2:NSRange = NSMakeRange(3, 5)
let withRange = (str as NSString).substringWithRange(range2)

// string find
let address = "愛知県昭和区御器所町"
let findIndex = find(address, "県")
if findIndex != nil {
    let address1 = address[address.startIndex...findIndex!]
    var start2 = findIndex?.successor()
    let address2 = address[start2!..<address.endIndex]
}

// string hasPrefix hasSuffix
let itemList = ["adi-123-S", "nik-90-M", "adi-33x-M", "nor-des2-S"]
var markAdi:[String] = []
var sizeS:[String] = []
for item in itemList {
    if item.hasPrefix("adi") {
        markAdi.append(item)
    }
    if item.hasSuffix("S") {
        sizeS.append(item)
    }
}
println(markAdi)
println(sizeS)

// NSMutableString insertString
var abc:NSMutableString = "ABCDE"
abc.appendString("123")
abc.insertString("あいうえお", atIndex: 3)

// NSMutableString delete
var str3:NSMutableString = "ABCDE12345"
let delRange = NSMakeRange(1, 4)
str3.deleteCharactersInRange(delRange)

// append
var colors = ["red", "green"]
colors.append("yellow")

// insert
var aList = ["a", "b", "c", "d"]
aList.insert("XYZ", atIndex: 2)

// remove
var colorArray = ["red", "blue", "green", "black", "white"]
var delColor = colorArray.removeAtIndex(2)
colorArray.removeLast()
colorArray.removeAll()

// max, min, ave
let numArray = [53, 45, 67, 81, 77]
var sum = 0
var min = Int.max
var max = Int.min
for item in numArray {
    sum += item
    if item < min {
        min = item
    } else if item > max {
        max = item
    }
}
let ave = Double(sum)/Double(numArray.count)
sum
min
max

// enumerate
let colorList = ["bulew", "yellow", "red", "green"]
for (index, value) in enumerate(colorList) {
    println((index, value))
}

// sort
var ageArray = [34, 23, 31, 26, 28, 22, 40]
ageArray.sort{$0 < $1}
ageArray

var stringArray = ["orange", "Apple", "lemon", "Peach"]
let sortedStringArray = stringArray.sorted {
    $0.uppercaseString < $1.uppercaseString
}

// filter
var age30 = ageArray.filter {$0 >= 30}
age30

let age30to39 = filter(ageArray, {(age:Int) -> Bool in
    return age >= 30 && age < 40
})

// map
let nums = [20, 30, 10, 50]
let plusOnes = nums.map {$0 + 1}
plusOnes









