//
//  UserDTO.swift
//
//
//  Created by Yujin Kim on 2024-02-03.
//

import Vapor
import Data

struct CreateUserDTO: Content {
    let email: String?
}

struct UpdateUserDTO: Content {
    let username: String?
    let phoneNumber: String?
    
    enum CodingKeys: String, CodingKey {
        case username
        case phoneNumber = "phone_number"
    }
    
    init(username: String?, phoneNumber: String?) {
        self.username = username
        self.phoneNumber = phoneNumber
    }
}
