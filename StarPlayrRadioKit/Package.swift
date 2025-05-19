// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StarPlayrRadioKit",
    platforms: [
           .macOS(.v12),
           .iOS(.v15)
       ],
    products: [
        .library(
            name: "StarPlayrRadioKit",
            targets: ["StarPlayrRadioKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/StarPlayrX/SwifterLite", branch: "mustang")
    ],
    targets: [
        .target(
            name: "StarPlayrRadioKit",
            dependencies: [.product(name: "SwifterLite", package: "SwifterLite")]
        ),
    ]
)
