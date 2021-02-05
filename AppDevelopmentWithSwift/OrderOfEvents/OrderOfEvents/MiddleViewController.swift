//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Leo on 2021/02/05.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("MiddleViewController: viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("MiddleViewController: viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("MiddleViewController: viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("MiddleViewController: viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("MiddleViewController: viewDidDisappear")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
