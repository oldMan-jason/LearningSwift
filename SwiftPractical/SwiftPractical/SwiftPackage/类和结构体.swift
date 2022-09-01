//
//  类和结构体.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/5/18.
//

import Foundation

/*
  共同点: 1. 都可以定于存储属性；2.定义函数 3. 提供下标语法 4. 定义构造器设置初始值 5. 添加扩展增加默认实现 6.遵守协议
  不同点: 1. 类可以继承 2. 类型允许转化 3 类有析构函数 4. 类有引用计数器
 */


struct SwiftStructMoudle {
    var width = 0
    var height = 0
    
}

class SwiftClassModule {
    
    var structPro = SwiftStructMoudle()
    var rate = 0
    var name: String?
    
}

class SwiftClassAndStructModule: NSObject {
    
    override init() {
        super.init()
        
        //初始化
        let cls = SwiftClassModule()
        let stru = SwiftStructMoudle()
        //逐一构造器
        var str = SwiftStructMoudle(width: 12, height: 12)
        
        //属性访问
        cls.name = "json"
        str.width = 20
        
        
        //类属于引用类型   （浅拷贝）
        //结构体和枚举 值类型 （深拷贝）
        
        //恒等运算符 === (判定两个常量或者变量是否引用同一个类实例)
        
        
    }
    
    
    
}

