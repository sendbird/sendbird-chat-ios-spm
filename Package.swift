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
            url: "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.17/SendBirdSDK.xcframework.zip",
            checksum: "fee640d9ecc5e0e4d95f998d41e04a976a8192a53ac4c2bc48d89f932df2a589"
        ),
    ]
)
