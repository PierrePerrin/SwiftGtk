//
//  Copyright © 2015 Tomas Linhart. All rights reserved.
//

import Foundation
import SwiftGtk
import CGtk

let app = Application(applicationId: "com.pierre.perrin.monpaperboard")
app.run { window in
    
    SGFileManager.ressourceDirectory = NSHomeDirectory() + "/Desktop/monPBRessources/"
    
    window.title = "Hello World"
    window.defaultSize = Size(width: 1920/2 , height: 1080/2)
    
    window.resizable = true
    let color = Color(red:0.1,green:0.1,blue:0.1,alpha:1)
    
    window.backgroundColor = color
    window.setFullScreen()

    let zone = Zone.init()
   
    let image = Image.init(filename: "Shape.png")
    zone.add(image, atPosition: Position.init(x: 50, y: 50))
    
    let label = Label.init(text: "Hello")
    label.setFont(withName: "Avenir 48")
 
    if #available(OSX 10.12, *) {
        Timer.scheduledTimer(withTimeInterval: 1/60, repeats: true, block: { (timer) in
            label.text = String(Date().timeIntervalSince1970)
            window.update()
        })
    }
    label.tintColor = Color.init(red: 1, green: 1, blue: 1)
    
    zone.add(label, atPosition: Position.init(x: 50, y: 200))
    
    
    window.add(zone)
}
