//
//  可选项.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/11/21.
//

import UIKit


class SwiftOptionsViewControll: UIViewController {

    /**可选类型的定义*/
    var str: String? = "123"
    
    let num: Int? = 12
    
    /**返回值 可选类型*/
    let array = [1,2,3]
    
    func indexObject(index:Int) -> Int? {
        
        if index<0 || index >= array.count {
            return nil
        }
        
        return array[index];
    }
    
    /**判断可选项是否有值*/
    func optionsHasValue() -> Void {
        //1. ==nil
        if str == nil {
            print("str 没有值")
        }
        //2. 可选绑定
        if let str = str {
            print(str)
        }
        
        //3.守护
        guard let str = str else {
            print("没有值");
            return
        }
        
        print(str)
        
        
    }
    
    /**空合并运算符*/
    
    func test() -> Void {
        
        // a??b
        /**
         1. a必须是可选项
         2. b可以是可选项也可以是非可选项
         3. b跟a的存储类型必须相同
         4. 如果a不为nil，则返回a
         5. 如果a为nil，则返回b
         6. 如果b不是可选项，a不为nil，则返回a的时候，需要进行解包
         
         */
        
        
    }
    
    /** ?? 跟if let配合使用*/
    
    let a:Int? = nil
    let b: Int? = 20
    func test02() -> Void {
        
        if let c = a ?? b {
            print(c)
        }
    }
    
    /**guard语句*/
    /**
        guard 条件 else {
            提前退出当前作用域
            return,break,continue,thorw,error.
        }
     */
    
    /**隐式解包
     可选项一旦被设定值之后，就会一直有值
     */
    let num2: Int! = 10
    
    
    
    
    
    
    
    
    
    
    
}




