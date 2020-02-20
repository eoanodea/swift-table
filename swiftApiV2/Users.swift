//
//  User.swift
//  swiftApiV2
//
//  Created by Eoan on 20/02/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import Foundation

struct Users {
    var id: String
    var name: String
    
    init(_ dictionary: [String: Any]) {
        self.id = dictionary["_id"] as? String ?? ""
        self.name = dictionary["name"] as? String ?? ""
    }
}
