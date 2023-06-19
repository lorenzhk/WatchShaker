// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WatchShaker",
    platforms: [.iOS("15.0"), .watchOS("8.0")],
    products: [
        .library(
        name: "WatchShaker",
        targets: ["WatchShaker"])
    ],
    targets: [
        .target(
            name: "WatchShaker",
            path: "Sources"
        ),
        .testTarget(
            name: "WatchShakerTests",
            dependencies: ["WatchShaker"]),
    ],
    swiftLanguageVersions: [SwiftVersion.v5]
)
