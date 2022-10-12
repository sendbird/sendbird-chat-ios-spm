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
            url:
                "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.29/SendBirdSDK.xcframework.zip",
            checksum: "26a8a2e293a05704b582c53eb235fb977b6c1bc6867af07f7c7819ee42ccbdbf"
        ),
    ]
)
