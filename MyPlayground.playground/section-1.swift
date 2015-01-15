// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "こんにちは"
let who = "松井"
str = str + who + "さん"

str = "こんにちは"
var newStr = ""
for c in str {
    newStr += String(c) + "★"
    println(c)
}