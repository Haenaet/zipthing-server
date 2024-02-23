import Vapor
import Data

// configures vapor application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    //
    // 토큰 키 설정
    try setJWTSigners(app)
    
    // 데이터베이스 설정
    try setFluentMySQL(app)

    // 라우트 등록
    try routes(app)
}

private func setJWTSigners(_ app: Application) throws {
    guard let secretKey = Environment.get("JWT_SECRET_KEY") else { return }
    
    app.jwt.signers.use(.hs256(key: secretKey))
}
