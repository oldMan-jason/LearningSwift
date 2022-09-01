//
//  基本运算符.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/3/28.
//

import Foundation

class SwiftBasicOperationModule: NSObject {
    
    /*
     术语
     一元 +a
     二元 2+3
     三元 a > b ? 2:3
     */
    
    /*
     赋值运算符
     */
    let a = 10
    var b = 20
    
    /*
     算术运算符
     + - * /
     */
    
    /*
     求余运算符
     a % b ，负数符号会被忽略
     */
    
    /*
     组合赋值运算符
     */
    var number = 1
    func operation1(){
        number += 2
    }
    
    /*
     比较运算符 == 、!= 、 > 、< 、>= 、<=
     */
    
    /*
     空合运算符：a ?? b ，将对可选类型a进行空判断，如果a包含一个值，就进行解包，否则返回一个默认值b
     */
    
    /*
     区间运算符
     1. 闭区间运算符    a...b
     2. 半开区间运算符  a..<b
     3. 单侧区间       [...4]
     */
    
    
    /**
        逻辑运算符
        非 !a
        与 a&&b
        或 a||b
     */
    
    
    
    
    
    
}
