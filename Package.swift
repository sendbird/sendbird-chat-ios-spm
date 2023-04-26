
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
            url: "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.48/SendBirdSDK.xcframework.zip",
            checksum: "65b379a63a32dc90e93c5f2f4546ab25e2a900d6eac2f215b2495fa1d76d7f65"
        ),
    ]
)
