// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Pango",
    products: [
        .library(name: "Pango", targets: ["Pango"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CPango.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftGObject.git", .branch("master"))
    ],
    targets: [
        .target(name: "Pango", dependencies: ["GLibObject"]),
        .testTarget(name: "PangoTests", dependencies: ["Pango"]),
    ]
)
