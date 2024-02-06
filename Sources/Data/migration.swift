//
//  migration.swift
//
//
//  Created by Yujin Kim on 2024-01-31.
//

import Fluent
import Vapor
import Data

func migrate(_ app: Application) throws {
    try app.migrations.add(UserToken.Migration())
}
