//
//  02字符和字符串.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/2/2.
//

import UIKit

class CharAndString: NSObject {

    func testMethdod() -> Void {
        
        /**
         字符
         */
        var c: Character
        c = "s"
        c = "邵"

        /**
         字符串
         */
        var str : String
        str = "shaozejun"

        /**
         字符串的构造
         */
        let str1 = "hello"
        let str2 = "world"
        print(str1 + str2)
        /**
         字符串的插入  \()
         */
        let index = 9
        var urlhead  = "www.baidu.com"
        var messsage = "\(urlhead)/picture/\(index)"
        print(messsage)

        /**
        字符串的操作
         */
        //1 字符串的比较
        let string1 = "shaozejun@163.com"
        if string1 > "abcd" {
            print(string1)
        }
        //是否有前缀
        if string1.hasPrefix("shaozejun"){
            print(string1)
        }
        //判断string1 是否为空
        if string1.isEmpty {
            print(string1)
        }
        //后缀
        if string1.hasSuffix("@163.com"){
            print(string1)
        }
        //字符串大写
        print(string1.uppercased())
        //首字母大写
        print(string1.capitalized)
        //首字母小写
        print(string1.lowercased())

        //字符串的截取
        var completeStr :String = "i code my life"

        var fromStr = (completeStr as NSString).substring(from: 2)
        var toStr = (completeStr as NSString).substring(to: 4)
        var rangStr = (completeStr as NSString).substring(with: NSMakeRange(4, 2))
        print(fromStr)
        print(toStr)
        print(rangStr)

    }
    
    //字符串运算符
    func testMethod2() -> Void {
        
        /**
         数值运算符
         + - * / %  ++ --
         */
        let v1: UInt8 =  222
        let v2 :UInt8 =  100
        //这样容易溢出
        //let v3 :UInt8 = v1 + v2
        //print(v3)

        //在求余数的时候 可以对小数进行取余数的运算
        //print(9%2.5)


        /**
        赋值运算符 swift不允许 连续赋值
         */
        let b  = 9
        let c = 10

        /**
         关系运算符  三目运算符
         */
        let res: Bool = 5 == 5+3
        /**
         逻辑运算符  ！ && ||
         */
        var allowleave = false
        if !allowleave {
            print("NO")
        }
    }
    
    static func basicOperator() {
        
        /**
         运算符是一元的、二元的或三元的
         */
        //一元前缀 !a ； 一元后缀 b!
        
        //二元中缀
        let m = 10,n = 20
        let k = m + n
        
        //三元
        let a = false
        a ? m : n
        
        
    }
}
