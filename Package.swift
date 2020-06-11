// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Bookmarks",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .executable(name: "bookmarks", targets: ["Bookmarks"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1")
    ],
    targets: [
        .target(name: "Bookmarks", dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")])
    ]
)
