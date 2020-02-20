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
//    var followers: Array<Any>
//    var following: Array<Any>
//    var customer: Array<Any>
    var stripeSeller: String
    
    
    
    init(_ dictionary: [String: Any]) {
        self.id = dictionary["_id"] as? String ?? ""
        self.name = dictionary["name"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.created = dictionary["created"] as? String ?? ""
        self.updated = dictionary["updated"] as? String ?? ""
        self.confirmed = dictionary["confirmed"] as? Bool ?? false
        self.blocked = dictionary["blocked"] as? Bool ?? false
        self.isPrivate = dictionary["private"] as? Bool ?? false
        self.stripeSeller = dictionary["stripe_seller"] as? String ?? ""
    }
}
