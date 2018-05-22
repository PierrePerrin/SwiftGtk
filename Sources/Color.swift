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
    
    static let clear = Color.init(red: 0, green: 0, blue: 0, alpha: 0)
    static let white = Color.init(red: 1, green: 1, blue: 1, alpha: 1)
    static let black = Color.init(red: 0, green: 0, blue: 0, alpha: 1)
}
