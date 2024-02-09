//
//  User.swift
//  Data
//
//  Created by Yujin Kim on 2024-01-31.
//

import Fluent
import Vapor

final public class User: Model {
    public static let schema: String = Schema.users.rawValue
    
    @ID(key: .id)
    public var id: UUID?
    
    @OptionalField(key: FieldKeys.name)
    var name: String?
    
    @Field(key: FieldKeys.email)
    var email: String
    
    @Field(key: FieldKeys.username)
    var username: String
    
    @Field(key: FieldKeys.role)
    var role: String
    
    @Field(key: FieldKeys.accountType)
    var accountType: String
    
    public init() {}
    
    public init(
        id: UUID? = nil,
        name: String? = nil,
        email: String,
        username: String,
        role: String,
        accountType: String
    ) {
        self.id = id
        self.name = name
        self.email = email
        self.username = username
        self.role = role
        self.accountType = accountType
    }
}

extension User: Authenticatable {}
