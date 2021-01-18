//
//  ViewController.swift
//  IBBasics
//
//  Created by Leo on 2021/01/18.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // storyboard上にあるボタンを control +クリックで選択して関連付ける
    @IBOutlet weak var myButton: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.setTitleColor(.red, for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

