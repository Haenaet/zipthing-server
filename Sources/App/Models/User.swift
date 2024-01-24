//
//  User.swift
//
//
//  Created by Yujin Kim on 2024-01-22.
//

import Fluent
import Vapor

final class User: Model {
    static let schema: String = Schema.users.rawValue
    
    @ID(key: .id)
    var id: UUID?
    
    @OptionalField(key: FieldKeys.name)
    var name: String?
    
    @Field(key: FieldKeys.email)
    var email: String
    
    @Field(key: FieldKeys.username)
    var username: String
    
    @Field(key: FieldKeys.role)
    var role: String
    
    @Field(key: FieldKeys.createdAt)
    var createdAt: String
    
    init() {}
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    init(name: String?, username: String) {
        self.name = name
        self.username = username
    }
}

extension User: Content {}
