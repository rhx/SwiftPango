// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Pango",
    products: [ .library(name: "Pango", targets: ["Pango"]) ],
    dependencies: [
        .package(name: "GLibObject", url: "https://github.com/rhx/SwiftGObject.git", .branch("main"))
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
