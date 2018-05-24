//
//  PBTimeAndDate.swift
//  SwiftGtkDemo
//
//  Created by Pierre Perrin on 24/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import Foundation
import SwiftGtk

class PBTimeAndDateView{
    
    let grid : Grid
    private var updateTimer: Timer?
    
    init() {
        grid = Grid()
        
        addTimeLabel()
        addDateLabel()
        grid.columnHomogeneous = false
        grid.rowHomogeneous = false
    }
    
    private(set) var timeLabel : Label!
    func addTimeLabel(){
        
        timeLabel = Label.init(text: "Time")
        timeLabel.setFont(withName: "Avenir 48")
        timeLabel.tintColor = Color.init(red: 1, green: 1, blue: 1)
        timeLabel.setTextAlignment(x: TextAligmentX.right.rawValue)
        self.grid.attach(child: timeLabel, left: 1, top: 0, width: 1, height: 1)
    }
    
    private(set) var dateLabel : Label!
    func addDateLabel(){
        
        dateLabel = Label.init(text: "Date")
        dateLabel.setFont(withName: "Avenir 24")
        dateLabel.tintColor = Color.init(red: 1, green: 1, blue: 1)
        self.grid.attach(child: dateLabel, left: 0, top: 1, width: 2, height: 1)
    }
    
    
    private var shouldUpdate = false{
        didSet{
            if shouldUpdate{
                updateText()
            }
        }
    }
    
    func startUpdating(){
        shouldUpdate = true
    }
    
    func stopUpdate(){
        
        updateTimer?.invalidate()
        updateTimer = nil
    }
    
    func updateText(){
        
        timeLabel.text = PBTimeManager.default.currentTime
        dateLabel.text = PBTimeManager.default.currentDate
        Window.update()
        
        if shouldUpdate{
            DispatchQueue.main
                .asyncAfter(deadline: DispatchTime.now() + 0.5)
                { [weak self] in
                self?.updateText()
            }
        }
    }
}
