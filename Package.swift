// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "UIImageViewAlignedSwift",
    platforms: [
        .iOS(.v8),
        .tvOS(.v9)
    ],
    products: [.library(name: "UIImageViewAlignedSwift",targets: ["UIImageViewAlignedSwift"])],
    dependencies: [],
    targets: [
        .target(name: "UIImageViewAlignedSwift", dependencies: []),
        .testTarget(
            name: "UIImageViewAlignedSwiftTests",
            dependencies: ["UIImageViewAlignedSwift"])
    ]
)
