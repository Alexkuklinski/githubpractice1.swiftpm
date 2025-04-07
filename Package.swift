// swift-tools-version: 6.0

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Demo",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "Demo",
            targets: ["AppModule"],
            bundleIdentifier: "org.jhhs.627210.Demo",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .smiley),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ],
    swiftLanguageVersions: [.version("6")]
)