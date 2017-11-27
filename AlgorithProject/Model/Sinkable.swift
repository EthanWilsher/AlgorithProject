//
//  Sinkable.swift
//  AlgorithProject
//
//  Created by Wilsher, Ethan on 11/20/17.
//  Copyright © 2017 Wilsher, Ethan. All rights reserved.
//

import Foundation
public protocol Sinkable
{
    var sinkState : Bool {get set}
    func sink() -> Void
    func hasSunk() -> Bool
    func sunkDepth() -> Int
}



