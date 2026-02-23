// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "Beethoven",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "Beethoven", targets: ["Beethoven"])
    ],
    dependencies: [
        .package(url: "https://github.com/ajc6432/Pitchy.git", branch: "master"),
        .package(url: "https://github.com/Quick/Quick.git", from: "7.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "13.0.0")
    ],
    targets: [
        .target(
            name: "Beethoven",
            dependencies: ["Pitchy"],
            path: "Sources/Beethoven",
            swiftSettings: [.swiftLanguageMode(.v5)] // update to 6 later
        ),
        .testTarget(
            name: "BeethovenTests",
            dependencies: [
                "Beethoven",
                "Pitchy",
                "Quick",
                "Nimble"
            ],
            path: "Tests/BeethovenTests",
            swiftSettings: [.swiftLanguageMode(.v5)] // update to 6 later
        )
    ]
)
