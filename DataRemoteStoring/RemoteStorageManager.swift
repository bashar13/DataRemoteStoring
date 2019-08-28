//
//  RemoteStorageManager.swift
//  DataRemoteStoring
//  a Singleton class. The class has only one instance for the whole app.
//  the instance of this class is used to make networking calls (HTTP PUSH request for now)
//
//  Created by Khairul Bashar on 27/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

import UIKit

class RemoteStorageManager: NSObject {

    let baseURL = "https://someurl.com"
    static let sharedInstance = RemoteStorageManager() //static property returns the one and only instance of the class, each time called
    
    /* a closure that executes a HTTP PUSH request
     Parameters:
     dataObject: the object to be stored
     endPoint: endpoint of the URL for the particular dataObject
     onSuccess: a method to be called on a successful push
     onFailure: a method to be called on a unsuccessful push
    */
    func postModelDataObject<RPProtocol>(dataObject: RPProtocol, endPoint: String, onSuccess: @escaping(String) -> Void,
                                         onFailure: @escaping(Error)-> Void) where RPProtocol: Codable {
        
        guard let uploadData = try? JSONEncoder().encode(dataObject) else {
            return
        }
        let url = URL(string: baseURL + endPoint)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.uploadTask(with: request, from: uploadData) { data, response, error in
            
            if (error != nil) {
                onFailure(error!)
            } else {
                let data = data
                let dataString = String(data: data!, encoding: .utf8)
                onSuccess(dataString!)
                
            }
        }
        task.resume()
    }
}
