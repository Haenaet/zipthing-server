//
//  User.swift
//  Data
//
//  Created by Yujin Kim on 2024-01-31.
//

import Fluent
import Vapor

final class User: Model {
    static let schema: String = Schema.users.rawValue
    
    @ID(key: .id)
    var id: UUID?
    
    @OptionalField(key: FieldKeys.name)
    var name: String?
    
    @OptionalField(key: FieldKeys.birthday)
    var birthday: String?
    
    @OptionalField(key: FieldKeys.phoneNumber)
    var phoneNumber: String?
    
    @OptionalField(key: FieldKeys.MBTI)
    var MBTI: String?
    
    @OptionalField(key: FieldKeys.shoeSize)
    var shoeSize: Int?
    
    @OptionalField(key: FieldKeys.hobbies)
    var hobbies: String?
    
    @OptionalField(key: FieldKeys.favoriteBrand)
    var favoriteBrand: String?
    
    @OptionalField(key: FieldKeys.favoriteBook)
    var favoriteBook: String?
    
    @Field(key: FieldKeys.email)
    var email: String
    
    @Field(key: FieldKeys.username)
    var username: String
    
    @Field(key: FieldKeys.role)
    var role: String
    
    @Field(key: FieldKeys.accountType)
    var accountType: String
    
    init() {}
    
    init(
        id: UUID? = nil,
        name: String? = nil,
        birthday: String? = nil,
        phoneNumber: String? = nil,
        MBTI: String? = nil,
        shoeSize: Int? = nil,
        hobbies: String? = nil,
        favoriteBrand: String? = nil,
        favoriteBook: String? = nil,
        email: String,
        username: String,
        role: String,
        accountType: String
    ) {
        self.id = id
        self.name = name
        self.birthday = birthday
        self.phoneNumber = phoneNumber
        self.MBTI = MBTI
        self.shoeSize = shoeSize
        self.hobbies = hobbies
        self.favoriteBrand = favoriteBrand
        self.favoriteBook = favoriteBook
        self.email = email
        self.username = username
        self.role = role
        self.accountType = accountType
    }
}
