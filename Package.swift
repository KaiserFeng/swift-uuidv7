// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-uuidv7",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "UUIDv7",
            type: .dynamic,
            targets: ["UUIDv7"]
        )
    ],
    dependencies: [
        // 已裁剪：不再声明任何外部依赖（移除了 GRUD 等）
    ],
    targets: [
        .target(
            name: "UUIDv7",
            path: "Sources/UUIDv7",
            exclude: []
        ),
        .testTarget(
            name: "UUIDv7Tests",
            dependencies: ["UUIDv7"],
            path: "Tests/UUIDv7Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)