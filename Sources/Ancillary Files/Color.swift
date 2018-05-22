//
//  Color.swift
//  SwiftGtk
//
//  Created by Pierre Perrin on 22/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import CGtk

public struct Color {
    
    public let red: Double
    public let green: Double
    public let blue: Double
    public let alpha: Double
    
    public init(red: Double, green: Double, blue: Double, alpha: Double = 1) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    var gdkRGBA : GdkRGBA{
        return GdkRGBA.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}
