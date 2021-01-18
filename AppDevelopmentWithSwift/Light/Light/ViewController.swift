//
//  ViewController.swift
//  Light
//
//  Created by Leo on 2021/01/18.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    private func updateUI() {
        if lightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
}

