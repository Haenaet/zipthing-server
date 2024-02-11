//
//  AuthenticationError.swift
//
//
//  Created by Yujin Kim on 2024-01-31.
//

import Vapor

enum AuthenticationError: Error {
    case badrequest
    case forbidden
    case unprocessable
}

extension AuthenticationError: AbortError {
    var identifier: String {
        switch self {
        case .badrequest: return "bad_request_error"
        case .forbidden: return "forbidden_error"
        case .unprocessable: return "unprocessable_error"
        }
    }
    
    var reason: String {
        switch self {
        case .badrequest: return "알맞은 요청을 해야합니다."
        case .forbidden: return "요청한 서버에 문제가 발생했습니다."
        case .unprocessable: return "사용자를 찾을 수 없습니다."
        }
    }
    
    var status: HTTPResponseStatus {
        switch self {
        case .badrequest: return .badRequest
        case .forbidden: return .forbidden
        case .unprocessable: return .unprocessableEntity
        }
    }
}
