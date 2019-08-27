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
    
    // Function encodes data model into a Dictionary/JSON object of key-value pairs
    func onSave() {
        
    
        let rpComment1 = RPComment(id: "qwewq121", user: "Jon", dateTime: "Some date", desc: "Hi")
        let rpComment2 = RPComment(id: "qwqw112", user: "Jon", dateTime: "Some date", desc: "Hi")
        
        let rpAnnotation = RPAnnotation()
        rpAnnotation.addComment(comment: rpComment1)
        rpAnnotation.addComment(comment: rpComment2)
        
        guard let uploadData = try? JSONEncoder().encode(rpAnnotation) else {
            
            return
        }
        
        //here we need to do the networking call
        //HTTP PUSH request
    }


}

