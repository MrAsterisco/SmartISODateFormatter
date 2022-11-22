// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SmartISODateFormatter",
    platforms: [
      .iOS(.v11),
      .macOS(.v10_13),
      .macCatalyst(.v13),
      .tvOS(.v11),
      .watchOS(.v4)
    ],
    products: [
        .library(
            name: "SmartISODateFormatter",
            targets: ["SmartISODateFormatter"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SmartISODateFormatter",
            dependencies: []),
        .testTarget(
            name: "SmartISODateFormatterTests",
            dependencies: ["SmartISODateFormatter"]),
    ]
)
