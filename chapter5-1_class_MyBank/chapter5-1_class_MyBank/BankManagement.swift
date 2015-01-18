//
//  BankManagement.swift
//  chapter5-1_class_MyBank
//
//  Created by Kohei Hayakawa on 1/18/15.
//  Copyright (c) 2015 Kohei Hayakawa. All rights reserved.
//

import Foundation

private class Bank {
    
    var zandaka:UInt = 0
    
    func inMoney(money:UInt) -> (Bool, UInt, UInt) {
        zandaka += money
        return (true, money, zandaka)
    }
    
    func outMoney(money:UInt) -> (Bool, UInt, UInt) {
        if zandaka >= money {
            zandaka -= money
            return (true, money, zandaka)
        } else {
            return (false, money, zandaka)
        }
    }
}

internal class BankManager {
    
    private var myBank:Bank
    private(set) var point:Int = 0
    
    var zandaka:UInt {
        get{
            return myBank.zandaka
        }
    }
    
    init() {
        myBank = Bank()
    }
    
    func nyukin(money:UInt) -> (Bool, UInt, UInt) {
        point += 10
        let result = myBank.inMoney(money)
        return result
    }
    
    func syukkin(money:UInt) -> (Bool, UInt, UInt) {
        let result = myBank.outMoney(money)
        return result
    }
}