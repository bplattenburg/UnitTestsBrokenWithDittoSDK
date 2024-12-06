// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnitTestsBrokenWithDittoSDK",
    platforms: [
        .macOS("13.0"),
        .iOS("16.0")
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UnitTestsBrokenWithDittoSDK",
            targets: ["UnitTestsBrokenWithDittoSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoSwiftPackage", from: "4.9.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UnitTestsBrokenWithDittoSDK",
            dependencies: [
                .product(name: "DittoObjC", package: "DittoSwiftPackage"),
                .product(name: "DittoSwift", package: "DittoSwiftPackage"),
            ]
        ),
        .testTarget(
            name: "UnitTestsBrokenWithDittoSDKTests",
            dependencies: [
                "UnitTestsBrokenWithDittoSDK"
            ]
        ),
    ]
)
