// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdmiralCore",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "AdmiralCore",
            targets: ["AdmiralCore"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AdmiralCore",
            dependencies: [])
    ]
)
