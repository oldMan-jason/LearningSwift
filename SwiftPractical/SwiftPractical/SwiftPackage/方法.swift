//
//  方法.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/6/14.
//

import Foundation

/**
    Swift中，类、结构体、枚举都是可以定义方法，OC中，只有类才可以定义方法。这个是Swift和OC的区别
    
    mutating 只针对在枚举和结构体中修改属性值的时候，对实例方法进行修饰，类中不需要
 */
class SwiftMethodClass {
    
    //实例方法
    func func1() -> Void {
     
        let p = PointStruct(x: 10, y: 10);
        p.isToRightOf(x: 5)
    }
    
    //类型方法 （类方法）
    class func func2() -> Void {
        
    }

}

enum SwiftEumnEnum {
    
    case west,east
    
    //实例方法
    func dirmethod(dir: SwiftEumnEnum) -> SwiftEumnEnum {
        return .east
    }
    
    //类型方法 static修饰
    static func dirMethod2() {
        
    }
}

struct PointStruct {
    
    var x = 0.0,y = 0.0
    
    func isToRightOf(x: Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x defalutX: Double) -> Void {
        self.x += defalutX
    }
    
    
    static func loss(x: Double) {
        
    }
    
    
}

