//
//  PbWeather.swift
//  SwiftGtkDemo
//
//  Created by Pierre Perrin on 24/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import Foundation

class PBWeather{
    
    let cityId :String
    
    init(cityId:String) {
        self.cityId = cityId
    }
    
    var cityName : String?
    
    var mainDesk : String?
    
    var temp: Float?
    var tempMax: Float?
    var tempMin: Float?
    var pressure: Float?
    var humidity:Float?
    
    
    var sunriseTime : TimeInterval?
    var sunsetTime : TimeInterval?
    
}
