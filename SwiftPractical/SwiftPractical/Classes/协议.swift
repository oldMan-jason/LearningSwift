//
//  协议.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/2/3.
//

import UIKit
/**
 它只指定属性的名称和类型。此外，协议还指定属性是可读的还是可读可写的。
 协议中使用 var 定义属性
 */
protocol myProtocal {
    
    var studentCount:Int {set get}
    var className : String?{get}
    
    //类属性
    static var clsP : String? {set get}
    
}

class ProtocolObject: NSObject {

    
    
}
