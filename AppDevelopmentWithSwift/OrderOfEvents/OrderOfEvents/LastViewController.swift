//
//  LastViewController.swift
//  OrderOfEvents
//
//  Created by Leo on 2021/02/05.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("LastViewController: viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("LastViewController: viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("LastViewController: viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("LastViewController: viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("LastViewController: viewDidDisappear")
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
