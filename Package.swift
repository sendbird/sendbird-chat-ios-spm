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
                "https://github.com/sendbird/sendbird-ios-framework/releases/download/v3.1.28/SendBirdSDK.xcframework.zip",
            checksum: "859a694c58007ae4576afa6d80b9050bb699651da660dc38575feff24c375ed3"
        ),
    ]
)
