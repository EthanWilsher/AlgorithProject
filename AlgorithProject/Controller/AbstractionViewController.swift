//
//  AbstractionViewController.swift
//  AlgorithProject
//
//  Created by Wilsher, Ethan on 11/8/17.
//  Copyright © 2017 Wilsher, Ethan. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return[
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary" ),
            self.newAbstractionViewController(abstractionLevel: "AndGate"),
        ]
    }()
    
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewControll
    {
    }

    override public func viewDidLoad()
    {
    
    }
