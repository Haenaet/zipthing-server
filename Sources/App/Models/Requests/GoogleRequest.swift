//
//  GoogleRequest.swift
//
//
//  Created by Yujin Kim on 2024-01-31.
//

import Vapor

struct GoogleRequest: Content {
    let idToken: String
    
    enum CodingKeys: String, CodingKey {
        case idToken = "id_token"
    }
}
