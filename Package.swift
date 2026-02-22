// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Beethoven",
    products: [
        .library(name: "Beethoven", targets: ["Beethoven"])
    ],
    targets: [
        .target(name: "Beethoven", dependencies: [], path: "Source")
    ]
)
