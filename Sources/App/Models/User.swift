//
//  User.swift
//
//
//  Created by Yujin Kim on 2024-01-22.
//

import Vapor
import FluentMySQLDriver

final class User: Codable {
    var id: UUID?
    var name: String
    var email: String
    var accessToken: String
    
    init(name: String, email: String, accessToken: String) {
        self.name = name
        self.email = email
        self.accessToken = accessToken
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.email = try container.decode(String.self, forKey: .email)
        self.accessToken = try container.decode(String.self, forKey: .accessToken)
    }
}
