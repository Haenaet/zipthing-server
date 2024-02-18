//
//  AuthenticationController.swift
//  App
//
//  Created by Yujin Kim on 2024-01-31.
//

import Fluent
import JWT
import Vapor

final class AuthenticationController {
//    private func redirectToGoogle(req: Request) throws -> Response {
//        return req.redirect(to: "")
//    }
//    
//    private func handleGoogleCallback(req: Request) throws -> EventLoopFuture<Response> {
//        return req.jwt
//    }
    /// Google 계정 인증
//    private func verifyGoogle(_ req: Request) throws -> EventLoopFuture<Token> {
//                let request = try req.content.decode(GoogleRequest.self)
//                let idToken = request.idToken
//        
//                let url = "https://oauth2.googleapis.com/tokeninfo?id_token=\(idToken)"
//        
//                return req.client.get(url).flatMap { res in
//                    do {
//                        guard res.status == .ok else { throw Abort(.unauthorized) }
//        
//                        let responseToken = try res.content.decode(GoogleResponse.self)
//                        guard let googleClientID = Environment.get("GOOGLE_CLIENT_ID") else {
//                            throw Abort(.internalServerError, reason: "Google Client ID가 설정되지 않았습니다.")
//                        }
//        
//                        guard responseToken.aud == googleClientID else {
//                            throw Abort(.unauthorized, reason: "잘못된 사용자입니다.")
//                        }
//        
//                        let jwtPayloader = JWTPayloader(userID: "example-userID")
//                        let jwtSigner = JWTSigner.hs256(key: .init(stringLiteral: "key"))
//        
//                        let jwt = JWT(payload: jwtPayloader)
//                        let signedJWT = try jwt.sign(using: jwtSigner)
//                        print(signedJWT)
//        
//                        let expiresAt = Int(Date().timeIntervalSince1970 + 604800)
//        
//                        return req.eventLoop.future(Token(userID: UUID(), accessToken: signedJWT, tokenType: "Bearer", expiresAt: expiresAt))
//                    } catch {
//                        return req.eventLoop.future(error: error)
//                    }
//                }
//            }
}

extension AuthenticationController: RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        routes.group("auth") { auth in
//            auth.post("google", use: verifyGoogle)
        }
    }
}
