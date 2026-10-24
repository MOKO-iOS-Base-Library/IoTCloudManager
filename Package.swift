// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "MKIotCloudManager",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "MKIotCloudManager",
            targets: ["MKIotCloudManager"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/MOKO-iOS-Base-Library/MKBaseModuleLibrary.git", from: "2.2.19"),
        .package(url: "https://github.com/MOKO-iOS-Base-Library/MKCustomUIModule.git", from: "2.1.17"),
    ],
    targets: [
        .target(
            name: "MKIotCloudManager",
            dependencies: [
                "MKBaseModuleLibrary",
                "MKCustomUIModule",
            ],
            path: "MKIotCloudManager",
            sources: ["Classes"],
            resources: [.process("Assets")],
            publicHeadersPath: "Classes",
            cSettings: [
                .headerSearchPath("Classes/SDK"),
                .headerSearchPath("Classes/SDK/Config"),
                .headerSearchPath("Classes/SDK/MKNetwork"),
                .headerSearchPath("Classes/SDK/NetworkService"),
                .headerSearchPath("Classes/View"),
                .headerSearchPath("Classes/View/AccountLoginAlertView"),
                .headerSearchPath("Classes/View/ExitAccountAlertView"),
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
            ]
        )
    ]
)
