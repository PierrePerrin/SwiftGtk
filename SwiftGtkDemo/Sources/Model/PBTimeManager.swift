//
//  PBTimeManager.swift
//  SwiftGtk
//
//  Created by Pierre Perrin on 24/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import Foundation

class PBTimeManager{

    static let `default` : PBTimeManager
    = {return PBTimeManager()}()
    
    var currentDate : String{
        
        let date = Date.init()
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateStyle = DateFormatter.Style.full
        return dateFormatter.string(from: date)
    }
    
    var currentTime : String{
        
        let date = Date.init()
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.short
        dateFormatter.dateStyle = DateFormatter.Style.none
        return dateFormatter.string(from: date)
    }
}
