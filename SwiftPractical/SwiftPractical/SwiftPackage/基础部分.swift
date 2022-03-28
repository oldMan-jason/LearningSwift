//
//  01基础部分.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/3/28.
//

import Foundation
import UIKit

class SwiftBasicModule: NSObject {
    
    /*
     常量值不可以改变，使用let
     变量值可以随意更改，使用var
     */
    
    let maxNumber = 100
    var currentNumber = 80
    
    /**一行中定义多个变量或者常量**/
    let x = 0,y = 0
    var w = 0,h = 0
    
    /**类型注解： 定义变量或者常量要存储的值类型**/
    let width: Double = 0.0
    var height: Float = 0.0
    
    /**一行定义多个同类型变量**/
    var name,level,sex: String?
    var red = 0.0,green = 0.0,blue: Double = 0.0
    
    
    /**log日志**/
    func printfun() -> Void {
        print("log日志输出！")
    }
    
    
    /*
     基本数据类型
     */
    
    /**整数： Int UInt 于平台原生字节长相同**/
    let count: Int = 100
    
    /**浮点： Float 32位  Double 64位**/
    let pi: Float = 3.14
    let piDouble: Double = 3.1415926
    
    /**数据类型转化**/
    func transform(){
        let pi2 = Double(pi)
        let total = pi2 + piDouble
        print(total)
    }
    
    /**类型别名**/
    typealias myInt = Int
    let a: myInt = 100
    
    /**布尔**/
    let isRich: Bool = true
    
    /**元组**/
    let tuple = (200,"sucess message")
    
    /**定义元组给单个元素命名**/
    let httpsStatus = (code: 200,message: "sucess")
    
    /**元组访问**/
    func index(){
        let _ =  tuple.0
        let _ = httpsStatus.code
    }
    
    
    /*
     可选类型： 有值或者nil, 使用var来申明
     Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，nil 是一个指向不存在对象的指针。在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为 nil，不只是对象类型
     */
    
    var optionsValue: String?
    
    /*强制解析*/
    func optionsFun() {
        
        if optionsValue != nil {
            let _ = optionsValue!
        }
    }
    
    /**可选绑定**/
    func optionsBind(){
        if let optionsvalue = optionsValue {
            print(optionsvalue)
        }
        
        if var options = optionsValue {
            options = "new value"
            print(options)
        }
        
        let a1 = "a"
        let b1 = "b"
        
        if let a = Int(a1),let b = Int(b1),a > b {
            
        }
    }
    
    /*
     隐式解析可选类型： 当可选类型第一次被赋值，可以确定之后一直有值
     可以理解为自动解析的可选类型，Swift 首先会把它当作普通的可选值；如果它不能被当成可选类型使用，Swift 会强制解析可选值。
     */
    func implicitlyFun(){
        let implicitly: String! = "jason"
        let _ = implicitly // op: String? 优先可选
        let _: String = implicitly //op1: String 指定类型，系统强制解析
    }
    
    
    /*
    错误处理  函数后 throws，函数调用前 try
     */
    
    func exsitThrowsFun() throws {
        print("存在异常抛出函数")
    }
    
    func invokeFun(){
        
        do {
            try exsitThrowsFun()
            print("没有异常信息抛出")
            
        }catch {
            print("有一个异常信息抛出")
        }
    }
    
    
    /*
     断言和先决条件，
     断言只针对debug环境，而先决条件在调试和生产环境中都能运行
     */
    
    func assetsFun() -> Void {
    
        let a = 3;
        assert(a > 4, "断言住了")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
