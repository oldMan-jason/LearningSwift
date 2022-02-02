//
//  结构体.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/11/21.
//

import UIKit

/**
 结构体的初始化器
 保证所有的成员都有初始化值
 */
struct Point {
    var x:Int
    var y:Int
    
}

let p = Point(x: 10, y: 10)

//值类型
/**
 值类型赋值给 var let 或者给函数，是直接将所有的内容拷贝一份
 类似于对文件进行了copy，产生全新的副本，属于深拷贝
 */

//引用类型
/**
 引用类型复制给var let 或者给函数传参数，是内存地址的拷贝
 类似于文件的替身，属于浅拷贝
 */

class Person {
    
    var name:String?
    
    var height: Float = 170
    
    init(name:String?,height:Float) {
        self.name = name;
        self.height = height;
          
    }
    
    
}


