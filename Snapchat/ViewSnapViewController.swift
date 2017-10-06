//
//  ViewSnapViewController.swift
//  Snapchat
//
//  Created by Bryan Hayes on 10/5/17.
//  Copyright © 2017 ZappyCode. All rights reserved.
//

import UIKit
import SDWebImage
import Firebase
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

class ViewSnapViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var snap = Snap()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = snap.descrip
        imageView.sd_setImage(with: URL(string : snap.imageURL))
        //  .image = snap.imageURL
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        Database.database().reference().child("users").child(Auth.auth().currentUser!.uid).child("snaps").child(snap.key).removeValue()
        Storage.storage().reference().child("images").child("\(snap.uuid).jpg").delete { (error) in
            print("we deleted the pic")
        }
    }
    
}
