//
//  Environment+Variables.swift
//
//
//  Created by Yujin Kim on 2024-02-19.
//

import Vapor

extension Environment {
    // MARK: - Google
    /// client identifier
    static var googleClientID: String? {
        guard let value = Environment.get("GOOGLE_CLIENT_ID") else { return nil }
        
        return value
    }
    /// redirect url
    static var googleRedirectURL: String? {
        guard let value = Environment.get("GOOGLE_REDIRECTION_URL") else { return nil }
        
        return value
    }
    /// secret key
    static var googleSecretKey: String? {
        guard let value = Environment.get("GOOGLE_CLIENT_SECRET") else { return nil }
        
        return value
    }
    // MARK: - SIWA
    /// service bundle identifier
    static var siwaID: String? {
        guard let value = Environment.get("SIWA_ID") else { return nil }
        
        return value
    }
    /// redirect url
    static var siwaRedirectURL: String? {
        guard let value = Environment.get("SIWA_REDIRECT_URL") else { return nil }
        
        return value
    }
    /// team identifier
    static var siwaTeamID: String? {
        guard let value = Environment.get("SIWA_TEAM_ID") else { return nil }
        
        return value
    }
    /// secret key identifier
    static var siwaJWKID: String? {
        guard let value = Environment.get("SIWA_JWK_ID") else { return nil }
        
        return value
    }
    /// siwa key
    static var siwaKey: String? {
        guard let value = Environment.get("SIWA_KEY") else { return nil }
        
        return value
    }
    // MARK: - Token
    /// available type
    static var tokenType: String? {
        guard let value = Environment.get("JWT_TYPE") else { return nil }
        
        return value
    }
    /// secret key
    static var tokenKey: String? {
        guard let value = Environment.get("JWT_SECRET_KEY") else { return nil }
        
        return value
    }
}
