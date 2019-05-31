// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CloudApp",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(name: "App", targets: ["CloudApp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pmacro/Suit.git", .branch("master"))
    ],
    targets: [
        .target(name: "CloudApp", dependencies: ["Suit"]),
        .testTarget(name: "CloudAppTests", dependencies: ["CloudApp"]),
    ]
)
