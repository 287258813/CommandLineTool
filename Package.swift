// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommandLineTool",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/johnsundell/files.git",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "CommandLineTool",
            dependencies: [
                "CommandLineToolCore"
            ]
        ),
        .target(
            name: "CommandLineToolCore",
            dependencies: [
                "Files"
            ]
        ),
        .testTarget(
            name: "CommandLineToolTests",
            dependencies: [
                "Files",
                "CommandLineToolCore"
            ]
        )
    ]
)
