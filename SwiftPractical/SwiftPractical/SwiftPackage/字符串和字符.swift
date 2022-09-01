//
//  字符串和字符.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/4/18.
//

import Foundation

class SwiftStringModule: NSObject {
    
    /**
        字面量
     */
    let string = "string value"
    let muString = """
                    多行字面量
                   """
    
    /**
        特殊字符
      转义字符 \0(空字符)、\\(反斜线)、(水平制表符)、(换行符)、(回车符)、\"(双引号)、\'(单引号)
     */
    let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
    // "Imageination is more important than knowledge" - Enistein
    let dollarSign = "\u{24}"             // $，Unicode 标量 U+0024
    let blackHeart = "\u{2665}"           // ♥，Unicode 标量 U+2665
    let sparklingHeart = "\u{1F496}"      // 💖，Unicode 标量 U+1F496
    
    
    /**
        初始化字符串
     */
    var initString = ""
    var initOtherString = String()
    
    func stringMethod() -> Void {
        //字符串判空
        if initString.isEmpty {}
    }
    
    /**
        swift中，字符串为值类型，当其进行常量、变量赋值操作，或在函数/方法中传递时，会进行值拷贝
     */
    
    var copy1String = "shaozj"
    
    func stringCopyMethod(ag:String) -> Void {
        
        let s1 = copy1String;
        
        copy1String = "jason"
        
        print(s1);
        print(copy1String)
    }
    
    
    /**
        使用字符
     */
    let characters = "enum string"
    func userCharacters() -> Void {
        for character in characters {
            print(character)
        }
    }
    
    /**
        字符串拼接和插入
        string1 + string2
        \(string)
     */
    
    
    /**
        字符串索引
     */
    var stringIndex = "hello word"
    func chapaterIndex() -> Void {

        for index in stringIndex.indices {
            print("\(stringIndex[index]) ", terminator: "")
        }
    }
    
    /**
        子字符串
        对父字符串截取后获得
     */
    func subStringMethod() -> Void {
        
        let Index = stringIndex.index(stringIndex.startIndex, offsetBy: 3)
    }
    
}
