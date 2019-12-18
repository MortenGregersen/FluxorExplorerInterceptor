// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "FluxorExplorerStoreInterceptor",
    platforms: [
        .macOS(.v10_15),
        .iOS("13.0"),
        .tvOS("13.0"),
    ],
    products: [
        .library(
            name: "FluxorExplorerStoreInterceptor",
            targets: ["FluxorExplorerStoreInterceptor"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/MortenGregersen/Fluxor",
            .branch("master")),
        .package(
            url: "https://github.com/MortenGregersen/FluxorExplorerSnapshot",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "FluxorExplorerStoreInterceptor",
            dependencies: ["Fluxor", "FluxorExplorerSnapshot"]),
        .testTarget(
            name: "FluxorExplorerStoreInterceptorTests",
            dependencies: ["FluxorExplorerStoreInterceptor"]),
    ]
)
