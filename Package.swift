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
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 3),

        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .Package(url: "https://github.com/vapor/leaf.git", majorVersion: 3),
    ]
)

