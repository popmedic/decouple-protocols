// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Protocols",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "Protocols",
            targets: ["Protocols"]),
    ],
    targets: [
        .target(
            name: "Protocols",
            dependencies: [],
            path: "Sources"),
    ]
)
