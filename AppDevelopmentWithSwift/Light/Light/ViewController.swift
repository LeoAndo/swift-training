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
        updateUI()
    }
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    private func updateUI() {
        // 三項条件演算子
        view.backgroundColor = lightOn ? .white : .black
        let titleText = lightOn ? "On" : "Off"
        lightButton.setTitle(titleText, for: .normal)
//        if lightOn {
//            view.backgroundColor = .white
//            lightButton.setTitle("On", for: .normal)
//        } else {
//            view.backgroundColor = .black
//            lightButton.setTitle("Off", for: .normal)
//        }
    }
}

