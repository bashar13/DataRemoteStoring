//
//  RPAnnotation.swift
//  DataRemoteStoring
//
//  Created by Khairul Bashar on 26/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

//Composite Class (parent of the leaf class RPComment in the hierarchy)
import Foundation

class RPAnnotation: Codable {
    
    var id: String?
    var user: String?
    var dateTime: String?
    var desc: String?
    var comments: [RPComment]? //Collection of comments
    
    func addComment(comment: RPComment) {
        comments?.append(comment)
    }
    
    func printAnnonation() {
        if let d = desc {
            print(d)
        }
        comments?.forEach {
            print($0)
        }
    }
}


