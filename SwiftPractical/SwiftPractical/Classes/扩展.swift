//
//  扩展.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/2/3.
/**
    扩展应用
    1. 添加计算型实例属性和类型属性
    2. 定义实例方法和类方法
    3. 提供新的构造器
    4. 定义和使用新的嵌套类型
    5. 为一个类遵循一个协议
 */

import UIKit

class ExtensionObject: NSObject {

    func test() -> Void {
        
        let v = 100[1]
        print(v)
        
    }
    
}

//扩展计算属性
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

//扩展类方法和实例方法
extension ExtensionObject {
    
    static func method () {
        
    }
    
    func instanceMethod() -> Void {
        
        let rect = MyRect(point: MyPoint(x: 1, y: 1), size: MySize(width: 10, height: 10))
        
    }
}

struct MyPoint {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct MySize {
    var width = 0.0
    var height = 0.0
}


struct MyRect {
    var point = MyPoint()
    var size = MySize()
}

//自定义构造器
extension MyRect {
    
    init (center: MyPoint,size: MySize){
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(point: MyPoint(x: originX, y: originY), size: size)
    }
}

//添加下标
extension Int {
    
    subscript(index: Int) -> Int {
        
        var decimalBase = 1
        for _ in 0..<index {
            decimalBase += 10
        }
        return decimalBase
    }
    
}



