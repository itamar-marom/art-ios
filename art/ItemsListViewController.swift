//
//  ItemsListViewController.swift
//  art
//
//  Created by admin on 17/05/2021.
//

import UIKit

class ItemsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var itemsTableView: UITableView!
    @IBOutlet weak var trashButton: UIBarButtonItem!
    
    var items = [1,2,3,4,5,6,7,8,9]
    
    var trashFlag = false
    @IBAction func trashAction(_ sender: Any) {
        trashFlag = !trashFlag
        itemsTableView.setEditing(trashFlag, animated: true)
        if (trashFlag) {
            trashButton.image = UIImage(systemName: "multiply.circle.fill")
            self.navigationItem.rightBarButtonItem = trashButton
        } else {
            trashButton.image = UIImage(systemName: "trash")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // UITableViewDelegate protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 101;
    }
    
    // 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemsTableView.dequeueReusableCell(withIdentifier: "itemsListRow", for: indexPath) as! ItemsTableViewCell
        cell.itemHeaderLabel.text = "ESSENTIAL"
        cell.itemPriceLabel.text = "400$"
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("")
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return trashFlag
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete  {
            items.remove(at: 0)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }
    }

}
