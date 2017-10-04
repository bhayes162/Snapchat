//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Bryan Hayes on 10/2/17.
//  Copyright © 2017 ZappyCode. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }


}
