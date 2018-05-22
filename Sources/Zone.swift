//
//  Zone.swift
//  SwiftGtk
//
//  Created by Pierre Perrin on 22/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import CGtk

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

open class Zone: Container {

    public override init() {
        super.init()
        
        self.widgetPointer = gtk_fixed_new()
    }
    
    override public func add(_ widget: Widget) {
        
        self.add(widget, atPosition: .zero)
    }
    
    public func add(_ widget: Widget, atPosition position :Position){
        
        gtk_fixed_put(castedPointer(), widget.widgetPointer, gint(position.x) , gint(position.y))
    }
}
