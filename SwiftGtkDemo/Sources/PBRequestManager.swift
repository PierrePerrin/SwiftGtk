//
//  PBRequestManager.swift
//  SwiftGtkDemo
//
//  Created by Pierre Perrin on 24/05/2018.
//  Copyright © 2018 Tomas Linhart. All rights reserved.
//

import Foundation

enum PBRequestMethod: String{
    case post="POST",
    get="GET"
}

class PBRequestManager{
    
    static let `default`: PBRequestManager = PBRequestManager()
    
    lazy var urlSession: URLSession = {
        var configuration = URLSessionConfiguration.default
        configuration.httpMaximumConnectionsPerHost = 1
        let session = URLSession.init(configuration: configuration)
        return session
    }()
   
    func makeRequest(withURL url : URL,
                     method:PBRequestMethod = .get,
                     parameters: [String:Any]? = nil,
                     headers:[String:String]? = nil,
                     completion:@escaping ((_ data:Data?,_ response: URLResponse?, _ error: Error?) -> Void) ){
        
        var request = URLRequest.init(url: url)
        
        if let param = parameters,
            let data = try? JSONSerialization.data(withJSONObject: param, options: []){
            
            request.httpBody = data
        }
        
        if let headers = headers{
            
            headers.forEach { (key,value) in
                request.addValue(value, forHTTPHeaderField: key)
            }
        }
        
        request.httpMethod = method.rawValue
        
        urlSession.dataTask(with: request) { data, response , error  in
            completion(data,response,error)
        }.resume()
        
    }
}
