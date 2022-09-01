//
//  集合类型.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/4/18.
//

import Foundation

class SwiftSetModule:NSObject {
    
    /*
     数组
     */
    let array = [Int]()
    
    /*
     字面量初始化数组
     */
    var array1: [String] = ["1","2"]
    
    /*
     访问和修改数组 Array
     */
    
    func testMethod() -> Void {
        
        //数组和个数
        let count = array.count
        
        //是否为空
        let isE = array1.isEmpty
        
        //添加数据
        array1.append("3")
        array1 += ["4","5"]
        
        //插入
        array1.insert("6", at: 5)
        
        //遍历 for in
        
        //移除
        array1.remove(at: 3)
        
    }
    
    
    /*
        Set
     */
    let setChar1: Set<Character> = ["a","b"]
    let setChar2: Set<Character> = ["a","b","c","d"]
    
    func setTestMethod() -> Void {
        //根据两个集合的交集创建一个新的集合
        let intersection = setChar1.intersection(setChar2)
        //方法根据两个集合不相交的值创建一个新的集合
        let symmetricDifferent = setChar1.symmetricDifference(setChar2)
        //根据两个集合的所有值创建一个新的集合
        let unionSet = setChar2.union(setChar2)
        //方法根据不在另一个集合中的值创建一个新的集合。
        let subtracting = setChar2.subtracting(setChar1)
    }
    
    /*
     Set中成员关系和相等
     */

    let houseAnimals: Set = ["🐶", "🐱"]
    let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
    let cityAnimals: Set = ["🐦", "🐭"]

    func setRelationTestMethod() -> Void {
        //来判断一个集合中的所有值是否也被包含在另外一个集合中
        houseAnimals.isSubset(of: farmAnimals)
        //判断一个集合是否包含另一个集合中所有的值
        farmAnimals.isSuperset(of: houseAnimals)
        //判断两个集合是否不含有相同的值
        farmAnimals.isDisjoint(with: cityAnimals)
    }
    
    /*
     字典
     */
    var dic: [Int : String] = [Int: String]()
    
    func dicTestMethod() -> Void {
        
    }
    
    
    
}
