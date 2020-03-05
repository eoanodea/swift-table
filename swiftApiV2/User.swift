//
//  User.swift
//  swiftApiV2
//
//  Created by Eoan on 20/02/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: String
    var name: String
    var email: String
    var created: String
    var updated: String
    var confirmed: Bool
    var blocked: Bool
    var isPrivate: Bool
    var followers: Array<Follow>
//    var following: Array<Any>
//    var customer: Array<Any>
//    var stripeSeller: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case email
        case created
        case updated
        case confirmed
        case blocked
        case isPrivate = "private"
//        case following
        case followers
    }
    
}
