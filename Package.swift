// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-ecs-ecr",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.2.0") ),
        .package(url: "https://github.com/vapor/fluent-provider.git", .upToNextMajor(from: "1.2.0") )
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor","FluentProvider"]),
        .target(name: "Run", dependencies: ["App"]),
    ],
    swiftLanguageVersions: [4]
)

