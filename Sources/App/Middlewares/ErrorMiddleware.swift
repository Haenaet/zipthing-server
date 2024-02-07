//
//  ErrorMiddleware.swift
//
//
//  Created by Yujin Kim on 2024-02-01.
//

import Vapor

extension ErrorMiddleware {
    static func custom(environment: Environment) -> ErrorMiddleware {
        return .init { req, err in
            let status: HTTPResponseStatus
            let reason: String
            let headers: HTTPHeaders
            let errorCode: String?
            
            switch err {
            case let abort as AbortError:
                reason = abort.reason
                status = abort.status
                headers = abort.headers
                errorCode = nil
            default:
                reason = "Something went wrong."
                status = .internalServerError
                headers = [:]
                errorCode = nil
            }
            
            let res = Response(status: status, headers: headers)
            
            do {
                let jsonEncoder = JSONEncoder()
                
                let errorResponse = ErrorResponse(isError: true, reason: reason, errorCode: errorCode)
                
                res.body = try .init(data: jsonEncoder.encode(errorResponse))
                res.headers.replaceOrAdd(name: .contentType, value: "application/json; charset=utf-8")
            } catch {
                res.body = .init(string: "\(err)")
                res.headers.replaceOrAdd(name: .contentType, value: "text/plain; charset=utf-8")
            }
            return res
        }
    }
}
