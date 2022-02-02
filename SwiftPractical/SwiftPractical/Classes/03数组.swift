//
//  03数组.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/2/2.
//

import UIKit

class ArrayObject: NSObject {

    func testMethod() -> Void {
        
        /**
         数组的概念和定义
         */
        var array1 = [2, 3 ,4 ,5]
        var array2 : Array = [2,3,4,5]
        var array3 : Array<Int> = [2,3,4,5]
        var array4 : [Int] = [2,3,4,5]
        var array5 : [Double] = [1.2, 3.4]
        var array6 : [String] = ["shao","zjun"]

        print(array2.count)
        /**
         数组中是可以放置不同类型的数据  Any --> 泛型
         */
        var array7 : Array<Any> = ["a",12,"shazejun",1.2]
        
        /**
         数组的元素访问数组中的元素   在数组中插入或者增加元素
         */

        var array8 = ["qiafneg","zejun","shao"]
        print(array8[0])
        /**
         newElement 参数名称
         */
        //在数组的尾部插入一个元素或者一系列元素
        array8.append("sky")
        array8.insert("love", at: 3)
        array8.append(contentsOf: ["hello","word"])
        print(array8)

        /**
         数组元素的修改和删除操作
         */
        var array9 : Array = ["shaozejun","qianfeng",1.2,34] as [Any]

        array9[2] = "swift"

        array9.removeLast()
        //删除指定索引的元素
        array9.remove(at: 2)
        //删除数组中的所有元素 并保持容量
        array9.removeAll(keepingCapacity: true)
        //打印 数组的容量
        print(array9.capacity);
        
        /**
         Range
         */
        //var range :Range<Int> = Range(statrt )

        /**
         数组的批量操作
         */
        var array10 = [1,2,3,4,5,67,10]
        array10 [0...4] = [9,89,12]
        print(array10)
        
        array10 += [10,12,33]
        array10 += array10[0...1]

        /**
         数组遍历
         */
//        for elem in array10 {
//            print(elem)
//        }
        //for (index ,value) in enumerate(array10){
        //
        //}
        //迭代除了第一个元素
        for elem in array10.dropFirst() {
            print(elem)
        }
        print("=====")
        //迭代除了后面的5个元素
        for elem in array10.dropLast(5) {
            print(elem)
        }
        print("=====")
        //遍历除索引和元素
        for (index , elem) in array10.enumerated() {
            print(index,elem)
        }
        print("=====")
        //map元素 （形变元素）
        let mapArray = array10.map { elem  in
                return elem + 1
        }
        
        print("=====")
        //过滤
        let copyarray10 = array10.filter { elem in
            return elem > 40
        }
        
        //模拟map的实现
        let m = copyarray10.map { e -> Int in
            return e + 10
        }
        
        arrayjinjie()
    }
    
    
    //数组的进阶
    func arrayjinjie() {
    
        let names = ["paula","Elena","Zoe"]
        var lastNameisA :String?
        //只是遍历数组中包含字母a的元素
        for elem in names where elem.hasSuffix("a"){
            print(elem)
        }
        
        let ar = [1,2,3,4]
        let testAr = ar.accumulate(1) { initResult, elem in
            return initResult + 1
        }
        print(testAr)
        
        //将数组中元素相加
        let arr1 = [1,2,3]
        let total = arr1.reduce(0) { partialResult, elem in
            return elem + partialResult
        }
        print(total)
        
        
        //
        let arr2 = [4,5,6]
        let arr3 = arr2.reduce("a") { partialResult, elem in
            return String(elem) + partialResult
        }
        print(arr3)
        
        
        
        
    }
    
    
    
    
    func pratical() -> Void {
        //b一样会被a改变
        let a = NSMutableArray(array: [1,2,3])
        let b : NSArray = a;
        a.insert("4", at: 2)
        print(b)
        
        //不会被改变
        let c = NSMutableArray(array: [1,2,3])
        let d = c.copy() as! NSArray
        c.insert("99", at: 3)
        print(d)
    
    }
}

extension Array {
    
    func accumulate<Result>(_ inititalResult: Result,_ nextPartialResult:(Result,Element)->Result) -> [Result] {
        
        var running = inititalResult
        
        return map { next in
            running = nextPartialResult(running,next)
            return running
        }
    }
}

extension Array {
    
    func map<T>(_ tranform: (Element) -> T) -> [T] {
        
        var result: [T] = [];
        result.reserveCapacity(self.count)
        
        for elem in self {
            result.append(tranform(elem));
        }
        
        return result
    }
}
