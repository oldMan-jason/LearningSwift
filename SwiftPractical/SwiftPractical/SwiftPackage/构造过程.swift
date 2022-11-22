//
//  析构过程.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/11/17.
//

import Foundation


class SetupClass: NSObject {
    
    //属性初始化值
    var count: Int = 0
    
    //常量属性必须在类初始化完成后已经被设置初始值
    let constValue: Float = 0.0
    
    var money: Double
    var clsName: String?
    
    struct classType {
        var class_id: Int
        var class_name: String?
    }
    
    //默认构造器
    init(money: Double) {
        self.money = money
    }
    
    //自定义构造器
    init(money: Double,name: String){
        self.money = money
        self.clsName = name
        
        //结构体的逐一构造器
        let _ =  classType(class_id: 100,class_name: "china")
        
    }
    
}

/**
    原则
 1. 指定构造器必须调用其直接父类的的指定构造器。
 2. 便利构造器必须调用同类中定义的其它构造器。
 3. 便利构造器最后必须调用指定构造器。
 
 一个更方便记忆的方法是：
 指定构造器必须总是向上代理
 便利构造器必须总是横向代理
 
 */
//类的继承
class Setup1Class: SetupClass {

    var subClassValue: String
    //指定构造器
    init(subString: String, money: Double,name: String) {
        self.subClassValue = subString
        super.init(money: money, name: name)
    }
    
    
    convenience override init(money: Double) {
        self.init(subString: "sub", money: 1, name: "json")
    }
}
