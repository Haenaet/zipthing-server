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
    static var googleClientID: String {
        guard let value = Environment.get("GOOGLE_CLIENT_ID") else { return "googleClientID variable is nil." }
        
        return value
    }
    /// redirect url
    static var googleRedirectURL: String {
        guard let value = Environment.get("GOOGLE_REDIRECTION_URL") else { return "googleRedirectURL variable is nil." }
        
        return value
    }
    /// secret key
    static var googleSecretKey: String {
        guard let value = Environment.get("GOOGLE_CLIENT_SECRET") else { return "googleSecretKey variable is nil." }
        
        return value
    }
    // MARK: - SIWA
    /// service bundle identifier
    static var siwaID: String {
        guard let value = Environment.get("SIWA_ID") else { return "siwaID variable is nil." }
        
        return value
    }
    /// redirect url
    static var siwaRedirectURL: String {
        guard let value = Environment.get("SIWA_REDIRECT_URL") else { return "siwaRedirectURL variable is nil." }
        
        return value
    }
    /// team identifier
    static var siwaTeamID: String {
        guard let value = Environment.get("SIWA_TEAM_ID") else { return "siwaTeamID variable is nil." }
        
        return value
    }
    /// secret key identifier
    static var siwaJWKID: String {
        guard let value = Environment.get("SIWA_JWK_ID") else { return "siwaJWKID variable is nil." }
        
        return value
    }
    /// siwa key
    static var siwaKey: String {
        guard let value = Environment.get("SIWA_KEY") else { return "siwaKey variable is nil." }
        
        return value
    }
    // MARK: - Token
    /// available type
    static var tokenType: String {
        guard let value = Environment.get("JWT_TYPE") else { return "tokenType variable is nil." }
        
        return value
    }
    /// secret key
    static var tokenKey: String {
        guard let value = Environment.get("JWT_SECRET_KEY") else { return "tokenKey variable is nil." }
        
        return value
    }
}
