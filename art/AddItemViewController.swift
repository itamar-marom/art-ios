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
        createItemVC.view.frame = addItemViewController.frame
        createItemVC.view.frame.origin = CGPoint(x: 0, y: 0)
        
        addItemViewController.addSubview(createItemVC.view)
    }

}
