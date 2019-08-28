//
//  ViewController.swift
//  DataRemoteStoring
//
//  Created by Khairul Bashar on 26/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //executes remote data store operation
    func onSave() {
        
    
        let rpComment1 = RPComment(id: "qwewq121", user: "Jon", dateTime: "Some date", desc: "Hi")
        let rpComment2 = RPComment(id: "qwqw112", user: "Jon", dateTime: "Some date", desc: "Hi")
        
        var comments: [RPComment] = [RPComment]()
        comments.append(rpComment1)
        comments.append(rpComment2)
        
        //stores the instance of RPAnnotation
        //we can use a similar approach to store the instances of any other data models that inherits the RPPRotocol
        //we can store the instance of RPComment seperately in a similar way.
        let rpAnnotation = RPAnnotation(id: "qwewq121", user: "Jon", dateTime: "Some date", desc: "Hi", comments: comments)
        let annotationEndPoint = "/annotation"
        RemoteStorageManager.sharedInstance.postModelDataObject(dataObject: rpAnnotation, endPoint: annotationEndPoint, onSuccess: { (str) in
            print(str)
            //update any view in main queue
        }) { (err) in
            print(err)
            //show error alert
        }
    }


}

