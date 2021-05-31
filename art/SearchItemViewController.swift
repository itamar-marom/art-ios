//
//  SearchItemViewController.swift
//  art
//
//  Created by Itamar Marom on 29/05/2021.
//

import UIKit

class SearchItemViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let childItemsListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ChildItemsViewController") as! ItemsViewController
        
        self.addChild(childItemsListVC)
        
        childItemsListVC.view.frame = viewContainer.frame
        childItemsListVC.view.frame.origin = CGPoint(x: 0,y: 20)
        
        viewContainer.addSubview(childItemsListVC.view)
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
