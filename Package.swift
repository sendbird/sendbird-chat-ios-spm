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
            url: "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.16/SendBirdSDK.xcframework.zip",
            checksum: "96f403d1a2f44338e7bbcf4988b65de2be65c9d25c600130d9f4c0bfba3d7f91"
        ),
    ]
)
