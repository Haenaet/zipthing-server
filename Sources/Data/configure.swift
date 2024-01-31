//
//  configure.swift
//  Data
//
//  Created by Yujin Kim on 2024-01-31.
//

import Fluent
import FluentMySQLDriver
import Vapor

public func setFluentMySQL(_ app: Application) throws {
    app.databases.use(
        DatabaseConfigurationFactory.mysql(
            hostname: Environment.get("DATABASE_HOST") ?? "localhost",
            port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? MySQLConfiguration.ianaPortNumber,
            username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
            password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
            database: Environment.get("DATABASE_NAME") ?? "vapor_database"
        ), as: .mysql
    )
}
