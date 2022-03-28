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
        
        
        
        let arr = ArrayObject();
        arr.testMethod()
//        arr.pratical()
        
    }


    func testAsynMethod() async {
        
        //并发
        let bf = BingfaObject()
        await bf.asyncMethod(value: "text")
        print("--")
    }
}

