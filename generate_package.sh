#!/bin/bash

CHECKSUM=''
VERSION=''

while getopts v:c: flag
do
    case "${flag}" in
        v) VERSION=${OPTARG};;
        c) CHECKSUM=${OPTARG};;
        *) error "Unexpected option ${flag}";;
    esac
done

if [ -z $CHECKSUM ]; then
    echo "Checksum is required"
fi

if [ -z $VERSION ]; then
    echo "Version is required"
fi

TEMPLATE="
// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: \"SendBirdSDK\",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: \"SendBirdSDK\",
            targets: [\"SendBirdSDK\"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: \"SendBirdSDK\",
            url: \"https://github.com/sendbird/sendbird-ios-framework/releases/download/$VERSION/SendBirdSDK.xcframework.zip\",
            checksum: \"$CHECKSUM\"
        ),
    ]
)"

echo -e "$TEMPLATE" > Package.swift
