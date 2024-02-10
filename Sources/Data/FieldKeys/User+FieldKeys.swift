//
//  UserFieldKeys.swift
//  Data
//
//  Created by Yujin Kim on 2024-01-31.
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
        static var accountType: FieldKey { "account_type" }
    }
}
