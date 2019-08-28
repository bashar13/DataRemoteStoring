//
//  RPComment.swift
//  DataRemoteStoring
//
//  Created by Khairul Bashar on 26/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

//leaf class of composite design pattern

import Foundation

struct RPComment: RPProtocol, Codable {
    let id: String
    let user: String
    let dateTime: String
    let desc: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case user
        case dateTime
        case desc
    }
}
