//
//  ViewController.swift
//  art
//
//  Created by Itamar Marom on 07/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toItemDetails") {
            let dvc = segue.destination
        }
    }
    
    @IBAction func createNewItem(_ sender: Any) {
        performSegue(withIdentifier: "createNewItem", sender: self)
    }
    
    @IBAction func backToMenu(segue: UIStoryboardSegue){
        print("backToMenu")
    }
    
}

