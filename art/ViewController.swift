//
//  ViewController.swift
//  art
//
//  Created by Itamar Marom on 07/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var headerButton: UIButton!
    @IBAction func headerButton(_ sender: UIButton) {
        header.text = "clicked"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        header.text = "hello"
        
    }
    
}

