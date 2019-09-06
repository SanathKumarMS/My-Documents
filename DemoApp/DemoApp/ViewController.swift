//
//  ViewController.swift
//  DemoApp
//
//  Created by Sanath Kumar M S on 08/08/19.
//  Copyright © 2019 YML. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstLabel: UILabel!
    

    
    @IBAction func pressToChange(_ sender: UIButton) {
        if firstLabel.text == "Inception"
        {
            firstLabel.text = "Interstellar"
        }
        else
        {
            firstLabel.text = "Inception"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View loaded")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View did disappear")
    }
}

