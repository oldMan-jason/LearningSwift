//
//  函数.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/4/29.
//

import Foundation
import UIKit

class SwiftFunctionObject: NSObject {
    
    //函数定义: 函数名、参数类型、返回值
    
    /**无参数、无返回值**/
    func greet() -> Void {}
    
    /**无参数、有返回值**/
    func greet() -> String {
        return "hello world"
    }
    
    /**有参数、无返回值**/
    func greet(person: String) -> Void {}
    
    /**有参数、有返回值**/
    func greet(person: String) -> String {
        return "hello" + person
    }
    
    //类函数 （静态函数）
    static func swiftFun() {
        
        SwiftFunctionObject().objectFunc()
        let _ = SwiftFunctionObject().sum(v1: 10, v2: 10)
        
    }
    
    //对象函数
    func objectFunc() {
        homeWork(at: "19:00")
        homeWork("21:00")
        
        var num1 = 10
        var num2 = 20
        swapValus(&num1, &num2)
        print(num1)
        print(num2)
        
    }
    
    //对象函数 有参数有返回值
    func sum(v1: Int, v2: Int) -> Int {
        return v1 + v2
    }
    
    //通过元祖返回多值
    func calculate(v1: Int,v2: Int) -> (sum:Int,difference:Int,average:Int) {
        
        let sum = v1 + v2
        let difference = v1 - v2
        let average = sum/2
        return (sum,difference,average)
        
    }
    
    //函数的参数标签 可以通过 _ 省略参数标签
    func homeWork(at time: String) {
        print("在 \(time)开始写作业")
    }
    
    func homeWork(_ time: String) {
        print("在 \(time)开始写作业")
    }
    
    //参数默认值
    func check(name:String = "shaozj",age: Int) {
        print("name \(name) age \(age)")
        
    }
    
    //函数中的可变参数
    func sumNumers(_ numbers: Int...) -> Int {
        
        var total = 0
        for n in numbers {
            total += n
        }
        return total
    }
    
    /**
     输入和输出参数
     inout 参数不能有默认值
     不可变参数 不可以标记为 inout 内部无法修改
     */
    
    func swapValus(_ v1: inout Int, _ v2: inout Int) {
        
        let tmp = v1;
        v1 = v2;
        v2 = tmp
        
    }
    
    /**
     函数的重载
     1. 函数名相同
     2. 参数个数不同、参数类型不同、参数标签不同
     3. 函数返回值类型跟重载无关
     */
    
    func sumvalues(v1: Int,v2: Int) -> Int {
        v1 + v2
    }
    
    func sumvalues(v1: Int,v2: Int,v3: String = "默认值") -> Int {
        v1 + v2
    }
    
    func sumvalues(v1: Int,v2: Int) {
        
        print(v1+v2)
    }
    
    
    
    /**多重返回值函数**/
    /**
        在 Int数组中找出最大和最小值
     */
    let array: [Int] = [2,1,4,10,42,32,28]
    
    func minMax(array: [Int]) -> (min: Int,max: Int) {
        
        if var min = array.first,var max = array.first {
         
            for value in array {

                if value < min {
                    min = value;
                }else if(value > max){
                    max = value
                }
            }
            return (min,max)
        }
        return (0,0)
    }
    
    func test() -> Void {
        
        print(minMax(array: array).min)
        print(minMax(array: array).max)
        
    }
    
    
    /**
     隐式返回的函数
     任何一个可以被写成一行 return语句的函数都可以忽略return
     */
    
    func greet2(person: String) -> String {
        "hello world" + person
    }
    
    /**
        外部参数
        例如： form your 也可以使用 _ 省略
     */
    
    func homeAds(from country: String,your city:String) {
        
    }
    
    func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
        // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
        //实际参数，函数体内使用
    
    }
    
    /**
        函数默认值
     */
    
    func comefromCountry(personName: String = "中国") -> Void {
        
    }
    
    /**
     输入和输出参数
     */
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    /**
     函数类型
     
     (Int,Int) -> Int
     
     */
    
    func funcType(a: Int,b: Int) -> Int {
        return a + b
    }
    
    
    
}

