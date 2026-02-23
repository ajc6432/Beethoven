// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Beethoven",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(name: "Beethoven", targets: ["Beethoven"])
    ],
    dependencies: [
        .package(url: "https://github.com/ajc6432/Pitchy.git", branch: "master")
    ],
    targets: [
        .target(
            name: "Beethoven", 
            dependencies: ["Pitchy"], 
            path: "Source"
        ),
        .testTarget(
            name: "BeethovenTests",
            dependencies: ["Beethoven"],
            path: "Tests"
        )
    ]
)