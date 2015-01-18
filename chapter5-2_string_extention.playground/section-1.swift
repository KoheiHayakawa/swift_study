// Playground - noun: a place where people can play

import UIKit

extension String {
    func rotation(count:UInt) -> String {
        var str:NSString = (self as NSString)
        var firstStr:String, restStr:String
        
        for _ in 1...count {
            firstStr = str.substringToIndex(1)
            restStr = str.substringFromIndex(1)
            str = restStr + firstStr
        }
        return str as String
    }
}

"あいうえおかきくけこ".rotation(3)