//
//  枚举.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/8/28.
//

import UIKit

/**
 基本定义
 */
enum Direction {
    case north,south,east,west
}

/**
 枚举的关联值
 */
enum Score {
    case point(Int,Int) //具体的分数 100'
    case grade(String)//分数等级 ABC
}

/**
    原始值
 */
enum ClothRawValues: String {
    case Color = "red"
    case Price = "$12"
    case Size  = "M"
}

/**
 递归枚举
 */

indirect enum ArithExpr {
    case number(Int)
    case sum(ArithExpr,ArithExpr)
    case diff(ArithExpr,ArithExpr)
}

class SwiftENUM: UIViewController {
    
    //永远不会被内联
    @inline(never) func test () {
        
    }
    //开启编译器优化 会被内联优化
    @inline(__always) func test01() {
        
    }
    
    static func cal(expr: ArithExpr) -> Int{
        
        switch expr {
        case let .number(a):
            return a
        case let .sum(expr1, expr2):
            return cal(expr: expr1) + cal(expr: expr2)
        case let .diff(expr3, expr4):
            return cal(expr: expr3) - cal(expr: expr4)
        }
    }
    
    static func swiftEnumFuns() {
        
        var direc = Direction.west
        direc = .north
        print(direc)
        
        //关联值
        let points = Score.point(98,99)
        
        switch points {
        case .point(let a, let b):
            print(a,b)
        case let .grade(c):
            print(c)
        default:
            break
        }
        
        //原始值
        let color = ClothRawValues.Color.rawValue
        print(color)
        
        //递归枚举
        let number1 = ArithExpr.number(10)
        
        print(MemoryLayout<ArithExpr>.size(ofValue: number1))//实际占用的内存大小
        print(MemoryLayout<ArithExpr>.stride(ofValue: number1))//系统分配的内存大小
        print(MemoryLayout<ArithExpr>.alignment(ofValue: number1))//内存对齐
        
        let number2 = ArithExpr.number(20)
        let sum = ArithExpr.sum(number1, number2)
        
        let value = cal(expr: sum)
        print(value)
        
    }
}
