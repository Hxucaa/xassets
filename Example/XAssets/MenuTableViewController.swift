//
//  MenuTableViewController.swift
//  XAssets
//
//  Created by Lance Zhu on 2015-06-25.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

final class MenuTableViewController : UITableViewController {
    
    /**
    YOU DO NOT HAVE TO CHANGE ANYTHING HERE.
    */
    
    private let menuItems = MenuItems()
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel?.text = menuItems.items[indexPath.row].name
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier(menuItems.items[indexPath.row].segue, sender: self)
    }
}