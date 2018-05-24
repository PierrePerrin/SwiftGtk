//
//  Copyright © 2015 Tomas Linhart. All rights reserved.
//

import Foundation
import SwiftGtk
import CGtk

SGFileManager.ressourceDirectory = NSHomeDirectory() + "/Desktop/monPBRessources/"
let app = Application(applicationId: "com.pierre.perrin.monpaperboard")
app.run { window in
    
    PBWeatherManager.default.update()
    
    func prepareWindow(){
        
        let width = 1920/2
        let height = 1080/2
        window.defaultSize = Size(width: width, height: height)
        window.resizable = true
        let color = Color(red:0.1,green:0.1,blue:0.1,alpha:1)
        window.backgroundColor = color
    }
    prepareWindow()
    
    var mainGrid : Grid!
    func addMainGrid(){
        mainGrid = Grid.init()
        window.add(mainGrid)
    }
    addMainGrid()
    
    func addTimeAndDate(){
        
        let timeAndDateView = PBTimeAndDateView.init()
        timeAndDateView.grid.backgroundColor = Color.init(red: 1, green: 0, blue: 0)
        timeAndDateView.startUpdating()
        mainGrid.attach(child: timeAndDateView.grid, left: 10, top: 1, width: 1, height: 1)
    }
    addTimeAndDate()
    
    
}
