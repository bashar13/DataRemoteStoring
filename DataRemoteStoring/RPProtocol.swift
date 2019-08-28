//
//  RPProtocol.swift
//  DataRemoteStoring
//
//  Created by Khairul Bashar on 27/8/19.
//  Copyright © 2019 Jahid Bashar. All rights reserved.
//

import Foundation

protocol RPProtocol: Codable {
    
    var id: String {get}
    var user: String {get}
    var dateTime: String {get}
    var desc: String {get}
}
