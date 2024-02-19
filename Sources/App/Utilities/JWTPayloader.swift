//
//  JWTPayloader.swift
//
//
//  Created by Yujin Kim on 2024-02-03.
//

import JWT

struct JWTPayloader: JWTPayload {
    
    var subject: SubjectClaim
    
    var expiration: ExpirationClaim
    
    enum CodingKeys: String, CodingKey {
        case subject = "sub"
        case expiration = "exp"
    }
    
    func verify(using signer: JWTKit.JWTSigner) throws {
        try self.expiration.verifyNotExpired()
    }
}
