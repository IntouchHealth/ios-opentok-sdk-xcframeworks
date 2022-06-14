// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "THOpenTok",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "THOpenTok",
            targets: ["OpenTokTarget", "_OpenTok"]),
    ],
    targets: [
        .binaryTarget(
            name: "_OpenTok",
            url: "https://github.com/IntouchHealth/ios-opentok-sdk-xcframeworks/releases/download/v0.0.2/_OpenTok.xcframework.zip",
            checksum: "b9b4b5f772ce594d204016c229a7acc4b8ab9ddc9588853bfa2d5ce7f403397c"
        ),
        .target(
            name: "OpenTokTarget",
            linkerSettings: [
                .linkedFramework("AudioToolbox", .when(platforms: [.iOS])),
                .linkedFramework("AVFoundation", .when(platforms: [.iOS])),
                .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
                .linkedFramework("CoreMedia", .when(platforms: [.iOS])),
                .linkedFramework("CoreTelephony", .when(platforms: [.iOS])),
                .linkedFramework("CoreVideo", .when(platforms: [.iOS])),
                .linkedFramework("GLKit", .when(platforms: [.iOS])),
                .linkedFramework("OpenGLES", .when(platforms: [.iOS])),
                .linkedFramework("QuartzCore", .when(platforms: [.iOS])),
                .linkedFramework("SystemConfiguration", .when(platforms: [.iOS])),
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
                .linkedFramework("VideoToolbox", .when(platforms: [.iOS])),
                .linkedLibrary("c++", .when(platforms: [.iOS])),
                .linkedLibrary("sqlite3", .when(platforms: [.iOS])),
            ]
        )
    ]
)
