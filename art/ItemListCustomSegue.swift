//
//  ItemListCustomSegue.swift
//  art
//
//  Created by Itamar Marom on 05/06/2021.
//

import UIKit

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
