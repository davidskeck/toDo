//
//  FirstViewController.swift
//  toDo
//
//  Created by David Keck on 6/10/14.
//  Copyright (c) 2014 David Keck. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbltoDo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tbltoDo.reloadData()
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete) {
            toDo.tasks.removeAtIndex(indexPath.row)
        }
        
        tbltoDo.reloadData()
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return toDo.tasks.count
        
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel.text = toDo.tasks[indexPath.row].name
        cell.detailTextLabel.text = toDo.tasks[indexPath.row].desc
        
        return cell
        
    }

}

