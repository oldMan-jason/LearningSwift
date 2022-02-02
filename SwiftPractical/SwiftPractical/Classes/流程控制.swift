//
//  流程控制.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/8/28.
//

import UIKit

class FlowControl: UIViewController {
    
    static func flowControl() {
        
        //标签语句
        outer: for i in 1...4 {
            
            for k in 1...4 {
                
                if k == 3 {
                    continue outer
                }
                
                if i == 3 {
                    break outer
                }
                print("i == \(i), k == \(k)")
            }
        }
    }
    
    override func viewDidLoad() {
        
        // if else
        let age = 12
        // if 后面必须是bool类型
        if age == 12 {
            
        }
        
        //repeat while
        repeat {
            print("先执行一次")
        } while age == 12
        
        
        //for
        let name = ["lisi","wangwu","zhaoliu"]
        
        for item in name {
            print(item)
        }
        
        for i in 0...(name.count - 1) {
            print(name[i])
        }
        
        for item in name where item == "lisi" {
            print(item)
        }
        
        //区间类型
        let range1 : ClosedRange<Int> = 1...3
        
        //字符串也也可以有区间运算符，但是不可以在for in中使用
        let str = "cc"..."ff"
        str.contains("cd")
        
        let str1 = "a" //默认为String
        let char: Character = "a" //类型为字符
        let char1: Character = "z"
        let range2 = char...char1   //let range2: ClosedRange<Character>
        
        
        // \0 到 ~ 嚷阔了所有可能的asdcii字符
        let charRange: ClosedRange<Character> = "\0"..."~"
        charRange.contains("G") //true
        
        //带间隔的区间值
        let hours = 11
        let hourInterval = 2 //区间间隔
        for item in stride(from: 3, to: hours, by: hourInterval) {
            print(item)
        }
        
    
        //Switch
        let number = 100
        switch number {
        case 0...90:
            print("good")
        default:
            break
        }
        
        //Switch结合枚举
        enum Answer {
            case right,worng
        }
        let answer = Answer.right
        switch answer {
        case .right:
            print("right")
        case .worng:
            print("wrong")
        }
        
        let nameString = "jack"
        switch nameString {
        case "jack":
            fallthrough //代码继续往下执行
        default:
            print(nameString)
        }
        
        //Switch 增加where
        let point = (1,1)
        switch point {
        case let (x,y) where x == y:
            print("x1 == y1")
        default:
            break
        }
        
        //标签语句
        outer: for i in 1...4 {
            
            for k in 1...4 {
                
                if k == 3 {
                    continue outer
                }
                
                if i == 3 {
                    break outer
                }
                print("i == \(i), k == \(k)")
            }
        }
    }
    
    
}
