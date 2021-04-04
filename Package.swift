// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Pango",
    products: [ .library(name: "Pango", targets: ["Pango"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("development")),
        .package(name: "GLibObject", url: "https://github.com/rhx/SwiftGObject.git", .branch("development"))
    ],
    targets: [
	.systemLibrary(name: "CPango", pkgConfig: "pangocairo", // apperently, `pangoft2` is not required in order to build successfuly
	    providers: [
		.brew(["pango", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libpango1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Pango", 
            dependencies: ["CPango", "GLibObject"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))]
        ),
        .testTarget(name: "PangoTests", dependencies: ["Pango"]),
    ]
)
