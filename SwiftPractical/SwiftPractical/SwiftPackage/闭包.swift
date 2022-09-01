//
//  闭包.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/4/18.
//

import Foundation
import UIKit

/**
    闭包表达式
    {
        (参数) -> (返回类型) in
         执行代码
    }
 */

class SwiftBiBaoModule: UIViewController {
    
    var comhandle:((_ value: AnyObject) -> (Void))?
    
    var weakValue: Int = 0;
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        weak var weakself = self
        //闭包的简单调用
        exMethod { a, b in
            weakself?.weakValue = 10
            return (a + b)
            
        }
        
        func exMethod(fn:(Int,Int) -> Int) {
            
            let c = fn(10,20)
            
            print(c)
            
        }
        
        
        //官方的闭包形式
        let array = ["jason","jack","tom"]
        
        let sortArray = array.sorted { value1, value2 in
            
            return value1 > value2
        }
    }
    
   
}

/**
    闭包的捕获
    能够从上下文中捕获变量和常量，即使这些变量和常量的作用域已经不存在，闭包
    扔能够再起函数体内引用和修改这些值
 */
extension ViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let blockValue = makeIncrementer(forIncrement: 3)()
        print(blockValue)
    }
    
    
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        
        var runingTotal = 0
        return {
            runingTotal += 1
            return runingTotal
        }
    }
}

/**
    逃逸闭包: 闭包作为一个实际参数传递给一个函数，并且他会在函数返回之后调用，在形式参数前面写 @escaping来明确闭包允许逃逸
    在逃逸闭包内部必须显示的使用 self
 */
extension ViewController {
    
    func escapingBlock(callBack: (_ data: String) -> Void) {
        
        callBack("jsondata")
    }
    
    
}
