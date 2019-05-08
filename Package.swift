// swift-tools-version:3.1
import PackageDescription

let package = Package(
    name: "Hello",
    targets: [
        .init(name: "App", dependencies: ["Leaf", "Vapor"]),
        .init(name: "Run", dependencies: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
    ]
)

