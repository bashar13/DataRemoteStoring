//
//  RPAnnotation.swift
//  DataRemoteStoring
//
//  Created by Khairul Bashar on 26/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

//Composite Class (parent of the leaf class RPComment in the hierarchy)
import Foundation

struct RPAnnotation: RPProtocol, Codable {
    
    let id: String
    let user: String
    let dateTime: String
    let desc: String
    let comments: [RPComment]? //Collection of comments
    
    enum CodingKeys: String, CodingKey {
        case id
        case user
        case dateTime
        case desc
        case comments
    }
}


