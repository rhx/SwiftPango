// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Pango",
    products: [ .library(name: "Pango", targets: ["Pango"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",    branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGObject.git", branch: "development")
    ],
    targets: [
        .systemLibrary(
            name: "CPango",
            pkgConfig: "pango",
            providers: [
                .brew(["pango", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libpango1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .systemLibrary(
            name: "CHarfBuzz",
            pkgConfig: "harfbuzz-gobject",
            providers: [
                .brew(["harfbuzz", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libharfbuzz-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "HarfBuzz",
            dependencies: [
                "CHarfBuzz",
            ]),
        .target(
            name: "Pango", 
            dependencies: [
                "CPango",
                "HarfBuzz",
                .product(name: "GLibObject", package: "SwiftGObject")
            ],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]),
        .testTarget(name: "PangoTests", dependencies: ["Pango"]),
    ]
)
