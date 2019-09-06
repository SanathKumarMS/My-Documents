//
//  TestA.swift
//  GCD
//
//  Created by Sanath Kumar M S on 30/08/19.
//  Copyright © 2019 YML. All rights reserved.
//

import Foundation

class TestA{
    //static var shared = TestA()
    init() {
        
    }
    
    func wait(seconds: Double){
        let q = DispatchQueue(label: "q")
        print("Start Date : ", seconds)
//        q.asyncAfter(deadline: .now() + seconds) {
//            print("In Wait: ", Date())
//            //print(Date())
//        }
//        print("Outside ", seconds)
    }
}
