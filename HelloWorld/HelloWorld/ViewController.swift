//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kohei Hayakawa on 1/15/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // chapter 2-1: ステートメントとデバッグ関数
        // HellowWorld
        println("ハローワールド")
        
        // statement
        var a = 1
        var b
        = 2
        + 3
        + 4
        var ans = a + b;println(ans)
        
        // lower-case/upper-case character
        var theName = "太郎"
        var theNAME = "二郎"
        println(theName)
        println(theNAME)
        
        // let var name
        let num = 12_850 * 2
        println(num)
        
        // debug println
        let msg = "ごきげんよう"
        let num2 = 12345
        let array = [1, 2, 3]
        println(msg)
        print("数字は \(num2)です。\n")
        println(array)
        println(__FUNCTION__)
        
        // debug assert
        var num3 = 0
        //assert(num3 != 0, "numは0であってはいけない")
        
        // chapter 2-2: 定数と変数
        // let
        let tax8 = 0.08
        let theLanguage = "Swift"
        let now = NSDate(); println(now)
        let logoCOLOR = UIColor(red:0.16, green:0.73, blue:0.61, alpha:1)
        let mens = 100, womens = 200
        
        // var
        var bird = "アマツバメ"
        var theYear = 2014
        var ax = 1.0, bx = 2.5, cx = 3.7
        
        // let var type
        let tax9:Double = 0.09
        let theLanguage2:String = "Swift"
        let mens2:Int = 100, womens2:Int = 200
        var theYear2:Int
        var id:String, size:Double
        theYear2 = 1999
        id = "123A"
        size = 23.5
        
        // var type error
        var id2 = 1234
        //id2 = "12AB"
        
        let tax = 0.08
        var tanka = 120
        var kosu = 3
        //var price = tanka * kosu * (1+tax)
        
        // var type cast
        let tax2 = 0.08
        var tanka2 = 120
        var kosu2 = 3
        var price2 = Double(tanka2 * kosu2) * (1+tax2)
        var intPrice = Int(price2)
        println(intPrice)
        
        // let var name
        let XYZ = "XYZ"
        let theNumber = 88888
        let 😊 = "ニコニコ"
        var 変数 = "変数"
        println(😊)
        
        //let 1hour = 60 * 60
        //let if = "あいえふ"
        //var color-1:String
        
        // chapter 2-3: タプル
        // tuple
        let product = ("Swift", 2014)
        var kingaku = (1000, 80)
        var guest = ("大重", "おおしげ", 1234)
        
        // tuple type
        let product2:(String, Int) = ("Swift", 2014)
        var kingaku2:(Int, Int) = (1000, 80)
        var guest2:(String, String, Int) = ("大重", "おおしげ", 1234)
        
        // tuple type error
        var kingaku3 = (1000, 80)
        //kingaku3 = (1000, "a")
        
        // tuple get item
        let (price3, tax3) = (1000, 80)
        println(price3 + tax3)
        
        // tuple wildcard
        let (price4, _) = (1000, 80)
        println(price4)
        
        // tuple get index
        let kingaku5 = (1000, 80)
        let price5 = kingaku3.0
        let tax5 = kingaku3.1
        println(price5 + tax5)
        
        // tuple set index
        var user = ("鈴木", 29)
        user.1 = 30
        println(user)
        
        // tuple get label
        let kingaku4 = (price:1000, tax:80)
        let seikyugaku = kingaku4.price + kingaku4.tax
        println(seikyugaku)
        
        // tuple set label
        var user2:(name:String, age:Int, isPass:Bool)
        user2.name = "早川"
        user2.age = 23
        user2.isPass = true
        println(user2)
        
        // chapter 2-4: 演算子
        // assignment operator
        let a2 = arc4random_uniform(100)
        let b2 = arc4random_uniform(100)
        let bigger = a2 > b2 ? a2 : b2
        println("aは\(a2)bは\(b2)biggerは\(bigger)")
        
        // range operator 2 dots
        for i in (1..<5) {
            println("\(i)回目")
        }
        
        // range operator 3 dots
        for i in (1...5) {
            println("\(i)回目")
        }
        
        //hex decimal RGB
        let RGB: UInt32 = 0x40E0D0
        let red = (RGB & 0xFF0000) >> 16
        let green = (RGB & 0x00FF00) >> 8
        let blue = RGB & 0x0000FF
        println("red \(red), green \(green), blue \(blue)")
        
        let R = CGFloat(red)/255
        let G = CGFloat(green)/255
        let B = CGFloat(blue)/255
        view.backgroundColor = UIColor(red: R, green: G, blue: B, alpha: 1.0)
        
        // chapter 2-5: 条件分岐
        // switch value binding
        let size2 = (4, 10)
        switch size2 {
        case (0, 0):
            println("幅高さともに0です。")
        case (5...10, 5...10):
            println("規定サイズです。")
        case (5...10, let height):
            println("高さ\(height)が規格外です。")
        case (let width, 5...10):
            println("幅\(width)が規格外です。")
        default:
            println("幅高さともに規格外です。")
        }
        
        // switch fallthrough
        var abc: (a: Bool, b: Bool, c: Bool) = (false, false, false)
        let fall = "b"
        switch fall {
            case "a":
                abc.a = true
                fallthrough
            case "b":
                abc.b = true
                fallthrough
            case "c":
                abc.c = true
                fallthrough
        default:
            println(abc)
        }
        
        // chapter 2-6: ループ処理
        // for-in array
        let numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var sum = 0
        for num in numList {
            sum += num
        }
        println("合計 \(sum)")
        
        // for-in decitionary
        let tokyometro = ["G":"銀座線", "M":"丸ノ内線", "H":"日比谷線", "T":"東西線", "C":"千代田線", "Z":"半蔵門線", "N":"南北線", "F":"副都心線"]
        for (rosenKigou, rosenName) in tokyometro {
            println("\(rosenKigou)は\(rosenName)")
        }
        for rosenKigou in tokyometro.keys {
            print("\(rosenKigou), ")
        }
        for rosenName in tokyometro.values {
            print("\(rosenName), ")
        }
        
        // loop label continue
        xloop:for x in 0...5 {
            yloop:for y in 0...5 {
                if (x < y) {
                    print("\n")
                    continue xloop
                }
                print((x,y))
            }
        }
        
        // loop label break
        let vlist:Array = [[4,2],[5],[9,8,-10],[6,8,-9],[4,2],[9,3],[-2]]
        
        outloop:for alist in vlist {
            inloop:for v in alist {
                if v < 0 {
                    println(alist)
                    break outloop
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

