//
//  下标.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/6/14.
//

import Foundation

/**
    下标可以定义在类、结构体、枚举中，语法类似于实例方法和计算型属性，使用subscript关键字
    与实例方法不同的是，下标可以设定为读写或者只读，下标不能使用 in-out 参数。
 */

class SubscriptClass {
    
    /**定义**/
    subscript (index: Int) -> Int {
        
        get {
            return 10
        }
        set {
            print(newValue)
        }
    }
    
    
    struct TimesTable {
        
        let mu: Int
        
        subscript(value: Int) -> Int{
            return mu * value
        }
    }
    
    init() {
        
        let stru = TimesTable(mu: 2)
        //下标取值
        print(stru[4])
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
