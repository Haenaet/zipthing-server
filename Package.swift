// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "zipthing-api",
    platforms: [
       .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent.git", from: "4.8.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.83.1"),
        .package(url: "https://github.com/vapor/fluent-mysql-driver.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor-community/Imperial.git", from: "1.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0")
    ],
    targets: [
        /// Run Module
        .executableTarget(
            name: "Run",
            dependencies: ["App"]
        ),
        /// App Module
        .target(
            name: "App",
            dependencies: [
                .product(name: "Fluent", package: "fluent"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "JWT", package: "jwt"),
                .product(name: "ImperialGoogle", package: "Imerial"),
                "Data",
            ]
        ),
        /// Data Module
        .target(
            name: "Data",
            dependencies: [
                .product(name: "Fluent", package: "fluent"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "FluentMySQLDriver", package: "fluent-mysql-driver"),
            ]
        ),
        /// Test Module
        .testTarget(name: "AppTests", dependencies: [
            .target(name: "App"),
            .product(name: "XCTVapor", package: "vapor"),
            // Workaround for https://github.com/apple/swift-package-manager/issues/6940
            .product(name: "Fluent", package: "Fluent"),
            .product(name: "Vapor", package: "vapor"),
        ])
    ]
)
