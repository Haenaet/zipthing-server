//
//  UserInformation.swift
//
//
//  Created by Yujin Kim on 2024-02-03.
//

import Fluent
import Vapor

final public class UserInformation: Model {
    public static let schema: String = "user_information"
    
    @ID(key: .id)
    public var id: UUID?
    
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
    
    public init() {}
}

extension UserInformation: Content {}
