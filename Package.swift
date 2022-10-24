
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
            url: "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.31/SendBirdSDK.xcframework.zip",
            checksum: "ab7626017c86670e5ab3b1f027adf39bc2f17f4b0d26406f88e4c7d26966c4e8"
        ),
    ]
)
