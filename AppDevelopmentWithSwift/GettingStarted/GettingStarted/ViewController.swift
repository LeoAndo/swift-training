//
//  ViewController.swift
//  GettingStarted
//
//  Created by Leo on 2021/01/16.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.title = "Debugging"
        
        var names = ["Tammy", "Cole"]
        names.removeFirst()
        names.removeFirst()
        names.removeFirst()
    }


}

