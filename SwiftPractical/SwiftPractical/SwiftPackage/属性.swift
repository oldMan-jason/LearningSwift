//
//  属性.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/5/18.
//

import Foundation

struct FirstValueLength {
    var first: Int
    let len: Int
}

class LazyClassObj: NSObject {
    
}

//属性包装器
@propertyWrapper
struct TwerOrLess {
    
    private var numer: Int = 0
    var wrappedValue: Int {
        get {
            return numer
        }
        set {
            numer = min(newValue, 12)
        }
    }

}

class SwiftPropertyModule: NSObject {
    
    /**计算属性可以用于类、结构体和枚举，而存储属性只能用于类和结构体**/
    
    //延迟加载属性
    lazy var lazyObj = LazyClassObj()
    
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Size {
        var width = 0.0, height = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set(newCenter) {
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
            }
        }
    }
    
    //属性检测器
    var step: Int = 0 {
        
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
    
    @TwerOrLess var height: Int
    
    
    override init() {
        super.init()
        
        let stru = FirstValueLength(first: 1, len: 2)
        //即使first属性被声明为存储属性，但是结构体为值类型，let常量修饰结构体变量，first也不可以修改
//        stru.first = 2
        
        var square = Rect(origin: Point(x: 0.0, y: 0.0),
            size: Size(width: 10.0, height: 10.0))
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0, y: 15.0)
        print("square.origin is now at (\(square.origin.x), \(square.origin.y))")


    }
    
    
    
}
