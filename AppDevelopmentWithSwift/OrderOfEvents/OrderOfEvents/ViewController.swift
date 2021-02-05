//
//  ViewController.swift
//  OrderOfEvents
//
//  Created by Leo on 2021/02/05.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewController: viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("ViewController: viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewController: viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewController: viewDidDisappear")
    }

}

