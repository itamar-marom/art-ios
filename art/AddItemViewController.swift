//
//  AddItemViewController.swift
//  art
//
//  Created by admin on 22/05/2021.
//

import UIKit

class AddItemViewController: UIViewController {
    @IBOutlet weak var addItemViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let createItemVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "createItemViewController")
        self.addChild(createItemVC)
        
        addItemViewController.addSubview(createItemVC.view)
    }

}
