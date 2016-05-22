//
//  AddItemViewController.swfit.swift
//  Checklists
//
//  Created by 赵策 on 16/5/22.
//  Copyright © 2016年 赵策. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController {

    @IBAction func cancel(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func done(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func tableView(tableView: UITableView,
                            willSelectRowAtIndexPath IndexPath: NSIndexPath)
        -> NSIndexPath?{
            return nil
    }
}