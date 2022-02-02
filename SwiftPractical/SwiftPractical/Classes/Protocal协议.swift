//
//  Protocal协议.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/11/21.
//

import Foundation


//协议只能够被类遵守
protocol objectProtocal: AnyObject {
    
    func objectClass() -> Void
    
    func objectProperty() -> Void
    
}

//协议扩展实现非必须的实现方法
extension objectProtocal {
    
    func objectClass() -> Void {
        
    }
}

//可以被oc遵守
@objc protocol myprotocal {
    
    func run1() -> Void
    
    func run2() -> Void
    
}

//协议的可选实现
@objc protocol myprotocal2 {
    //可选实现
    @objc optional func eat() -> Void
    
    func sleep() -> Void
    
    
}


/**必须实现两个协议方法*/
class Dog: myprotocal {
    
    func run1() {
        
    }
    
    func run2() {
        
    }
}

//只需要实现一个协议方法
class Cat: myprotocal2 {
    
    func sleep() {
        
    }
    
    
}


class PersonMan: objectProtocal {
    
    func objectProperty() {
        
    }
    
    
}
