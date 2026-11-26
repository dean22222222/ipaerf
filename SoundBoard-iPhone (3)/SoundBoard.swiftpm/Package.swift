// swift-tools-version: 5.9
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "SoundBoard",
    platforms: [.iOS("16.0")],
    products: [
        .iOSApplication(
            name: "SoundBoard",
            targets: ["AppModule"],
            bundleIdentifier: "codes.deanthegoat.soundboard",
            teamIdentifier: "",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .cloud),
            accentColor: .presetColor(.purple),
            supportedDeviceFamilies: [.pad, .phone],
            supportedInterfaceOrientations: [.portrait, .landscapeRight, .landscapeLeft]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            resources: [.copy("index.html")]
        )
    ]
)
