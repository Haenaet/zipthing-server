//
//  UserTokenFieldKeys.swift
//
//
//  Created by Yujin Kim on 2024-02-03.
//

import Fluent
import Vapor

extension UserToken {
    struct FieldKeys {
        static var userID: FieldKey { "user_id" }
        static var accessToken: FieldKey { "access_token" }
        static var expiresAt: FieldKey { "expires_at" }
    }
}
