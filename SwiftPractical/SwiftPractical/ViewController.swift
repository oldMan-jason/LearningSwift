//
//  ViewController.swift
//  SwiftPractical
//
//  Created by shaozejun on 2022/2/2.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sobj = SwiftStringModule();
        sobj.chapaterIndex()
        
        
        let fun = SwiftFunctionObject()
        fun.test()
        
        SwiftPropertyModule()
        
    }
}

