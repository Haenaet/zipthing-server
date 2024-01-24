//
//  UserFieldKeys.swift
//
//
//  Created by Yujin Kim on 2024-01-24.
//

import Fluent
import Vapor

extension User {
    struct FieldKeys {
        static var id: FieldKey { "id" }
        static var name: FieldKey { "name" }
        static var username: FieldKey { "username" }
        static var email: FieldKey { "email" }
        static var role: FieldKey { "role" }
        static var createdAt: FieldKey { "createdAt" }
    }
}
