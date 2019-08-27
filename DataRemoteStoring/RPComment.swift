//
//  RPComment.swift
//  DataRemoteStoring
//
//  Created by Khairul Bashar on 26/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

import Foundation

struct RPComment: Codable {
    
    var id: String
    var user: String
    var dateTime: String
    var desc: String
    
    func printComment() {
        print(desc)
    }
}
