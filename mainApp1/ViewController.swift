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
        tableView.rowHeight=70
        tableView.backgroundView=UIImageView(image: UIImage(named:"wallpaper"))
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
        if(indexPath.item % 2==0){
            cell.backgroundColor=UIColor.clearColor()
        }
        else
        {
          cell.backgroundColor=UIColor.whiteColor().colorWithAlphaComponent(0.2)
          cell.textLabel?.backgroundColor=UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        cell.textLabel?.text=array[indexPath.item]
        cell.textLabel?.textColor=UIColor.whiteColor()
        return cell
    }

}

