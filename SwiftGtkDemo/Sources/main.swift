//
//  Copyright © 2015 Tomas Linhart. All rights reserved.
//

import SwiftGtk
import CGtk

let app = Application(applicationId: "com.pierre.perrin.monpaperboard")
app.run { window in
    
    window.title = "Hello World"
    window.defaultSize = Size(width: 1920, height: 1080)
    
    window.resizable = true
    let color = Color(red:0.1,green:0.1,blue:0.1,alpha:1)
    
    window.setBackgroundColor(color:color )
    window.setFullScreen()

    let zone = Zone.init()
   
    let button = Image.init(filename: "Shape.png")
    zone.add(button, atPosition: Position.init(x: 50, y: 50))
    
    window.add(zone)
}
