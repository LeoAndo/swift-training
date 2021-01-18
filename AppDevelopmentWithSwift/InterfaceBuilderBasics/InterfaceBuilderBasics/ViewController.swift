//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Leo on 2021/01/18.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lableTitle: UILabel!
    @IBAction func changeTitle(_ sender: Any) {
        lableTitle.text = "change Title."
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

