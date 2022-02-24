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
            url: "https://github.com/sendbird/messaging-ios/releases/download/3.1.5/SendBirdSDK.xcframework.zip",
            checksum: "1556b5c46833bc2028f3efa47e68cf59600d9612951f30b365a7dae4ec103eae"
        ),
    ]
)
