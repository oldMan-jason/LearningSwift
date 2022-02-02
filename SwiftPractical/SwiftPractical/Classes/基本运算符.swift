//
//  基本运算符.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/8/28.
//

import UIKit


class BasicOperator: UIViewController {
    
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
