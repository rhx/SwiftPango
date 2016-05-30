import PackageDescription

let package = Package(
    name: "Pango",
    dependencies: [
        .Package(url: "https://github.com/rhx/CPango.git", majorVersion: 1),
        .Package(url: "https://github.com/rhx/SwiftGObject.git", majorVersion: 2)
    ]
)
