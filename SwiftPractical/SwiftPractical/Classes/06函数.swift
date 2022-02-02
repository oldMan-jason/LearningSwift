//
//  函数.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/8/28.

 /*
  函数的定义和调用
  定义 ： 完成某个特定任务的代码块，给代码快去一个合适的名字，称之为函数名，当函数被执行的时候，
  调用这个函数名字就可以了。
  swift 函数的定义语法：
  func 函数名 （参数名 ：参数类型，参数名 ：参数类型 ...） ->函数的返回值类型{
     函数的实现部分....
  }
  swift函数的调用语法
  函数名（实际参数...）
   */
 

import UIKit

class SwiftFunction: UIViewController {
    
    
    //类函数 （静态函数）
    static func swiftFun() {
        
        SwiftFunction().objectFunc()
        let _ = SwiftFunction().sum(v1: 10, v2: 10)
        
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
}
