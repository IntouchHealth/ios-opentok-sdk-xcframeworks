// swift-tools-version: 5.6
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
            url: "https://github.com/IntouchHealth/ios-opentok-sdk-xcframeworks/releases/download/v0.0.1/_OpenTok.xcframework.zip",
            checksum: "a9f43db5c586b5cb90274e85d5369007d3195c5a301716063c2aa6f1635922e8"
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
