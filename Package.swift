// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Beethoven",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Beethoven", targets: ["Beethoven"])
    ],
    dependencies: [
        // users cloning Beethoven will fetch Pitchy automatically
        .package(url: "https://github.com/ajc6432/Pitchy.git", branch: "master")
    ],
    targets: [
        .target(name: "Beethoven", dependencies: ["Pitchy"], path: "Sources/Beethoven"),
        .executableTarget(name: "Example", dependencies: ["Beethoven", "Pitchy"], path: "Example")
    ]
)