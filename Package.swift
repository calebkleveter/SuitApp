// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CloudApp",
    products: [
        .library(name: "CloudApp", targets: ["CloudApp"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "CloudApp", dependencies: []),
        .testTarget(name: "CloudAppTests", dependencies: ["CloudApp"]),
    ]
)