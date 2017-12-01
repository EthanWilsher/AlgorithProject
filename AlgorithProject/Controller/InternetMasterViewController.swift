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
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: replace with correct links
        addresses = [
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
            
        }
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
    
    override  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
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
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            let urlString = addresses[indexPath.row]
            let pageText : String
            
            if indexPath.row == 0
            {
                //TODO: replace with all my definitions
                pageText = "All the definitions i wrote"
            }
            else
            {
                pageText = internetTopics[indexPath.row]
                
            }
            let controller = segue.destination as! InternetDetailViewController
            {
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
