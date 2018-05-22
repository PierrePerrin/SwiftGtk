//
//  Copyright © 2015 Tomas Linhart. All rights reserved.
//

import SwiftGtk
import CGtk

let app = Application(applicationId: "com.pierre.perrin.monpaperboard")
app.run { window in
    
    window.title = "Hello World"
    window.defaultSize = Size(width: 1920/2 , height: 1080/2)
    
    window.resizable = true
    let color = Color(red:0.1,green:0.1,blue:0.1,alpha:1)
    
    window.backgroundColor = color
    //window.setFullScreen()

    let zone = Zone.init()
   
    let image = Image.init(filename: "Shape.png")
    zone.add(image, atPosition: Position.init(x: 50, y: 50))
    
    let label = Label.init(text: "Hello")
    label.setFont(withName: "Helvetica 50")
    label.tintColor = Color.init(red: 1, green: 1, blue: 1)
    
    zone.add(label, atPosition: Position.init(x: 50, y: 200))
    
    
    window.add(zone)
}
