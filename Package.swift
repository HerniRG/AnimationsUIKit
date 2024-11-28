// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnimationsUIKit",
    platforms: [
            // Define las plataformas compatibles
            .iOS(.v12)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AnimationsUIKit",
            targets: ["AnimationsUIKit"]),
    ],
    targets: [
        // Targets are the basic buildixng blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AnimationsUIKit"),
        .testTarget(
            name: "AnimationsUIKitTests",
            dependencies: ["AnimationsUIKit"]
        ),
    ]
)
