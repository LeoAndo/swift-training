//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Leo on 2021/02/01.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonA: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        print(sender.text)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("\(sender.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("isOn")
        } else {
            print("isOff")
        }
    }
}

