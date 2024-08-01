
// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "SendBirdSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "SendBirdSDK",
            targets: ["SendBirdSDK"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "SendBirdSDK",
            url: "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.54/SendBirdSDK.xcframework.zip",
            checksum: "32c22c667a55fc6a5f0032b04711169cfdccddd9c6e6ecd3650c388cb4c74d99"
        ),
    ]
)
