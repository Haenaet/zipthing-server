//
//  UserInformationFieldKeys.swift
//
//
//  Created by Yujin Kim on 2024-02-03.
//

import Fluent
import Vapor

extension UserInformation {
    struct FieldKeys {
        static var phoneNumber: FieldKey { "phone_number" }
        static var MBTI: FieldKey { "mbti" }
        static var shoeSize: FieldKey { "shoe_size" }
        static var hobbies: FieldKey { "hobbies" }
        static var favoriteBrand: FieldKey { "favorite_brand" }
        static var favoriteBook: FieldKey { "favorite_book" }
        static var birthday: FieldKey { "birthday" }
    }
}
