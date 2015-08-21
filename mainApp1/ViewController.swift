//
//  ViewController.swift
//  mainApp1
//
//  Created by Harvin Llanes on 8/15/15.
//  Copyright (c) 2015 Harvin Llanes. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
    let array=["ta tuani","de akachimba","deaverga"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return array.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell") as! UITableViewCell
        cell.textLabel?.text=array[indexPath.item]
        return cell
    }

}

