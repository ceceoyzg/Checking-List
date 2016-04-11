//
//  ViewController.swift
//  Checklists
//
//  Created by 赵策 on 16/2/22.
//  Copyright © 2016年 赵策. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0item: ChecklistItem
    var row1item: ChecklistItem
    var row2item: ChecklistItem
    var row3item: ChecklistItem
    var row4item: ChecklistItem
    
    var row0checked = false
    var row1checked = true
    var row2checked = true
    var row3checked = false
    var row4checked = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //*override func tableView(tableView:UITableView,numberOfRowsInSection section: Int) -> Int{
    //     return 1
    //}
    // override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    //    let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem", forIndexPath: indexPath)
    //     return cell
    // }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 }
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier( "ChecklistItem", forIndexPath: indexPath)
            let label = cell.viewWithTag(1000) as! UILabel
            
            if indexPath.row  == 0{
                label.text = row0item.text
            }else if indexPath.row  == 1{
                label.text = row1item.text
            }else if indexPath.row  == 2{
                label.text = row2item.text
            }else if indexPath.row  == 3{
                label.text = row3item.text
            }else if indexPath.row  == 4{
                label.text = row4item.text
            }
            
            configureCheckmarkForCell(cell, indexPath: indexPath)
            return cell }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
                if let cell = tableView.cellForRowAtIndexPath(indexPath) {
        if indexPath.row == 0{
        row0checked = !row0item.checked
    } else if indexPath.row == 1{
        row1checked = !row0item.checked
    } else if indexPath.row == 2{
        row2checked = !row0item.checked
    } else if indexPath.row == 3 {
        row3checked = !row0item.checked
    } else if indexPath.row == 4 {
        row4checked = !row0item.checked
    }
       configureCheckmarkForCell(cell, indexPath: indexPath)
                }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func configureCheckmarkForCell(cell: UITableViewCell, indexPath: NSIndexPath) {
        var isChecked = false
        if indexPath.row == 0 { isChecked = row0item.checked
    } else if indexPath.row == 1 { isChecked = row0item.checked
    } else if indexPath.row == 2 { isChecked = row0item.checked
    } else if indexPath.row == 3 { isChecked = row0item.checked
    } else if indexPath.row == 4 { isChecked = row0item.checked
        }
        if isChecked {
        cell.accessoryType = .Checkmark
    } else {
        cell.accessoryType = .None
        } }

}

