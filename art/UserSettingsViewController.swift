//
//  UserSettingsViewController.swift
//  art
//
//  Created by admin on 22/05/2021.
//

import UIKit

class UserSettingsViewController: UIViewController {

    @IBOutlet weak var userSettingsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let userSettingsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "editUserViewController")
        self.addChild(userSettingsVC)
        userSettingsVC.view.frame = userSettingsView.frame
        userSettingsVC.view.frame.origin = CGPoint(x: 0, y: 0)
        
        userSettingsView.addSubview(userSettingsVC.view)
    }
}
