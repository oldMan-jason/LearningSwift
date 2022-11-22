//
//  继承.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/11/17.
//

import Foundation


class FatherClass: NSObject {
    
    var name: String?
    var age: Int = 0
    //禁止重写
    final var money: Double = 100.0
    
    func doSomething() -> Void {
        
    }
    
}

//继承
class SonClass: FatherClass {
    
    //重写属性
    override var name: String? {
        set {
            self.name = newValue
        }
        get {
            self.name
        }
    }
    
    override var age: Int {
        
        set {
            self.age = newValue
        }
        get {
            return super.age + 10
        }
    }
    
    //重写方法
    override func doSomething() {
        
    }
    
    
    
}
