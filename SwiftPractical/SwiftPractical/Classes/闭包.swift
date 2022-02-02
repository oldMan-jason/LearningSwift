//
//  闭包.swift
//  SwiftGrammar
//
//  Created by shaozejun on 2021/11/21.
//

import UIKit


class BiBaoViewController: UIViewController {
    
    func exMethod(fn:(Int,Int) -> Int) {
        
        let c = fn(10,20)
        print(c)
        
    }

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        exMethod { a, b in
            
            return (a + b)
            
        }
        
    }
    
    
}


