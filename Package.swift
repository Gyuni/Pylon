// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Pylon",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Pylon", targets: ["Pylon"]),
        .library(name: "PylonUI", targets: ["PylonUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/devxoul/Then", from: "3.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.

        //  MARK: - Common
        .target(name: "Pylon", dependencies: ["Shortcuts", "Khala"]),

        .target(name: "Shortcuts", dependencies: ["Then"]),
        .target(name: "Khala", dependencies: ["Shortcuts"]),

        .testTarget(name: "ShortcutsTests", dependencies: ["Shortcuts"]),        
        .testTarget(name: "KhalaTests", dependencies: ["Khala"]),

        //  MARK: - UI
        .target(name: "PylonUI", dependencies: ["ShortcutsUI", "Palette"]),

        .target(name: "ShortcutsUI", dependencies: ["Shortcuts"]),
        .target(name: "Palette", dependencies: ["ShortcutsUI"]),
        
        .testTarget(name: "PaletteTests", dependencies: ["Palette"]),
        .testTarget(name: "ShortcutsUITests", dependencies: ["ShortcutsUI"]),
    ]
)
