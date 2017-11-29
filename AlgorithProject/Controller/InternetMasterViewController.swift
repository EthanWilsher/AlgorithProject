//
//  InternetMasterViewController.swift
//  AlgorithProject
//
//  Created by Wilsher, Ethan on 11/29/17.
//  Copyright © 2017 Wilsher, Ethan. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController
{
    private (set) lazy var internetTopics : [String] =
    {
        return [
        "Definitions",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide"
        ]
        
        
    }()
    
    
    
    
    
    
    
    
    
    
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    
    //MARK:- Table view data source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
