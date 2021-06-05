//
//  SearchItemViewController.swift
//  art
//
//  Created by Itamar Marom on 29/05/2021.
//

import UIKit

class SearchItemViewController: UIViewController, ItemListCustomSegueSourceDelegate {
    func getViewContainer(forIdentifier: String) -> UIView {
        return viewContainer
    }
    
    @IBOutlet weak var viewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "ItemListCustomSegueSearch", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let childItemsListVC = segue.destination as! SearchItemViewController
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

protocol ItemListCustomSegueSourceDelegate {
    func getViewContainer(forIdentifier:String)->UIView
}
class ItemListCustomSegue: UIStoryboardSegue {
    override func perform() {
        // Do any additional setup after loading the view.
        
        source.addChild(destination)
        
        let parent = source as! ItemListCustomSegueSourceDelegate
        let container = parent.getViewContainer(forIdentifier: identifier ?? "")
        destination.view.frame = container.frame
        destination.view.frame.origin = CGPoint(x: 0,y: 20)
        
        container.addSubview(destination.view)
    }
}
