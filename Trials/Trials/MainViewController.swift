//
//  MainViewController.swift
//  Trials
//
//  Created by Sanath Kumar M S on 12/08/19.
//  Copyright © 2019 YML. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func trasmitToNextVC(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    

}
