// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SwiftHelperInit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SwiftHelperInit",
            targets: ["SwiftHelperInit"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftHelperInit",
            path: "Sources/SwiftHelperInit"
        )
    ]
)

