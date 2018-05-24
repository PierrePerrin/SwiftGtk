//
//  pBWeatherManager.swift
//  SwiftGtkDemo
//
//  Created by Pierre Perrin on 24/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import Foundation

let ParisID = "4717560"
let SaintCloudID = "6455340"

class PBWeatherManager{
    
    static let `default` : PBWeatherManager = PBWeatherManager()
  
    let apiURL = "http://api.openweathermap.org/data/2.5/weather?id="
    let apiKey :String = "487da4bcba69e07ae4fc796a487cc399"
    
    let weather = PBWeather.init(cityId: SaintCloudID)
    
    func update(){
        
        guard let url = URL.init(string: apiURL + ParisID + "&appid=\(apiKey)") else{return}
        PBRequestManager.default.makeRequest(withURL: url) { (data, response, error) in
            
            guard let data = data,
            let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
            else{return}
            
            print(json)
            
        }
        
    }
}
