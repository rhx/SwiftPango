// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Pango",
    products: [
        .library(name: "Pango", targets: ["Pango"]),
    ],
    dependencies: [
        .package(url: "file:///Users/rh/src/swift/rh/gtk/SwiftGObject", .branch("master"))
        //.package(url: "https://github.com/rhx/SwiftGObject.git", .branch("master"))
    ],
    targets: [
	.systemLibrary(name: "CPango", pkgConfig: "pango",
	    providers: [
		.brew(["pango", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libpango1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "Pango", dependencies: ["CPango", "GLibObject"]),
        .testTarget(name: "PangoTests", dependencies: ["Pango"]),
    ]
)
