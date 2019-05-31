// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "App",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(name: "App", targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pmacro/Suit.git", .branch("master"))
    ],
    targets: [
        .target(name: "App", dependencies: ["Suit"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)
