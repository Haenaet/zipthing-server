//
//  UserToken.swift
//
//
//  Created by Yujin Kim on 2024-02-03.
//

import Fluent
import Vapor

final public class UserToken: Model {
    public static let schema: String = Schema.userTokens.rawValue
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: FieldKeys.userID)
    var userID: User
    
    @Field(key: FieldKeys.accessToken)
    var accessToken: String?
    
    @Field(key: FieldKeys.expiresAt)
    var expiresAt: Int
    
    public init() {}
    
    public init(
        id: UUID? = nil,
        userID: User.IDValue,
        accessToken: String,
        expiresAt: Int
    ) {
        self.userID.id = userID
        self.accessToken = accessToken
        self.expiresAt = expiresAt
    }
}

extension UserToken: Content {}

extension UserToken: ModelTokenAuthenticatable {
    typealias user = User
    
    static let valueKey = \UserToken.$accessToken
    
    static let userKey = \UserToken.$userID
    
    public var isValid: Bool { true }
}
