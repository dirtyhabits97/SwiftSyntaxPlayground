// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyTool",
    platforms: [
        .macOS(.v10_12)
    ],
    products: [
        .executable(name: "mytool", targets: ["MyTool"])
    ],
    dependencies: [
        .package(name: "SwiftSyntax",
                 url: "https://github.com/apple/swift-syntax.git",
                 .exact("0.50400.0"))
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyTool",
            dependencies: ["SwiftSyntax"]),
        .testTarget(
            name: "MyToolTests",
            dependencies: ["MyTool"]),
    ]
)
