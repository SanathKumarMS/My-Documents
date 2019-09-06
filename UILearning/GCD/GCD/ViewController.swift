//
//  ViewController.swift
//  GCD
//
//  Created by Sanath Kumar M S on 30/08/19.
//  Copyright © 2019 YML. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //simpleQueues()
        //queueQos()
        //concurrentQueues()
        //qWithInterval()
        test()
    }
    
    func simpleQueues(){
        
        let queue = DispatchQueue(label: "q")
        queue.async {
            for i in 1...10{
                print("-> ",i)
            }
        }
        for i in 100..<110 {
            print("Ⓜ️", i)
        }
    }
    
    func queueQos(){
        let q1 = DispatchQueue(label: "q1", qos: .background)
        let q2 = DispatchQueue(label: "q2", qos: .utility)
        q1.async {
            for i in 1...10{
                print("q1 ",i)
            }
        }
        q2.async {
            for i in 101...110 {
                print("q2 ", i)
            }
        }
        q1.async {
            for i in 11...20{
                print("q1 ",i)
            }
        }
        for i in 21...30 {
            print("Ⓜ️", i)
        }
        
    }
    
    func concurrentQueues(){
        let q = DispatchQueue(label: "cq", qos: .userInteractive, attributes: .concurrent)
        q.async {
            for i in 1...10{
                print("w11111   ", i)
            }
        }
        q.async {
            for i in 21...30 {
                print("w22222   ", i)
            }
        }
        q.async {
            for i in 101...110 {
                print("w33333   ", i)
            }
        }
    }
    
    func qWithInterval(){
        let q = DispatchQueue(label: "tq", qos: .utility)
        print(Date())
        //let timeInterval: DispatchTimeInterval = .seconds(5)
        
        q.asyncAfter(deadline: .now() + 3){
            print(Date())
        }
    }
    
    func test(){
        
//        let a = TestA()
//        let b = TestA()
//        let c = TestA()
//        a.wait(seconds: 5)
//        b.wait(seconds: 2)
//        c.wait(seconds: 3)
        let q = DispatchQueue(label: "q")//, qos: .utility, attributes: .concurrent)
        let q2 = DispatchQueue(label: "q2")
        let q3 = DispatchQueue(label: "q3")
        let a = TestA()
        let b = TestA()
        let c = TestA()
        print("Before 1")
        q.async {
            //sleep(1)
            a.wait(seconds: 1)
        }
        print("After 1")
        q2.async {
            //sleep(1)
            b.wait(seconds: 2)
        }
        print("After 2")
        q3.async {
           // sleep(1)
            c.wait(seconds: 3)
        }
        print("After 3")
//        TestA.wait(seconds: 1)
//        TestA.wait(seconds: 1)
    }


}

