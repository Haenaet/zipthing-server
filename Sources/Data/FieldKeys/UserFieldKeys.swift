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
        static var phoneNumber: FieldKey { "phone_number" }
        static var MBTI: FieldKey { "mbti" }
        static var shoeSize: FieldKey { "shoe_size" }
        static var hobbies: FieldKey { "hobbies" }
        static var favoriteBrand: FieldKey { "favorite_brand" }
        static var favoriteBook: FieldKey { "favorite_book" }
        static var birthday: FieldKey { "birthday" }
        static var role: FieldKey { "role" }
        static var accountType: FieldKey { "account_type" }
    }
}
