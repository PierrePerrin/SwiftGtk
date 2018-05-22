//
//  Position.swift
//  SwiftGtk
//
//  Created by Pierre Perrin on 23/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import Foundation

public struct Position{
    
    let x : Int
    let y : Int
    
    public init(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
    
    static let zero : Position = {
        return Position.init(x: 0, y: 0)
    }()
}
