//
//  selectUserViewController.swift
//  Snapchat
//
//  Created by Bryan Hayes on 10/3/17.
//  Copyright © 2017 ZappyCode. All rights reserved.
//

import UIKit

class selectUserViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()


        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        code
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
