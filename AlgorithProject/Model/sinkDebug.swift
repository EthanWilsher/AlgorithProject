//
//  sinkDebug.swift
//  AlgorithProject
//
//  Created by Wilsher, Ethan on 11/20/17.
//  Copyright © 2017 Wilsher, Ethan. All rights reserved.
//

import UIKit

public class sinkDebug: Sinkable
{
    public var sinkState: Bool
    
    public init()
    {
        self.sinkState = false
    }
    
    //MARK:- Squishable methods
    public func sink() -> Void
    {
        
        
    }
    
    public func hasSunk() -> Bool
    {
        if sinkState == true
        {
            print("OH NOOOOOOOOOOOOOOOO")
        }
        else
        {
            print("MBOKAY")
        }
        
        return hasSunk()
    }
    
    public func sunkDepth() -> Int
    {
        
        
        return sunkDepth()
    }
    
    
    
    
}
