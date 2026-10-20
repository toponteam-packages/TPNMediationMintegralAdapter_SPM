// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationMintegralAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationMintegralAdapter",
            targets: ["TPNMediationMintegralAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.6")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMintegralAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMintegralAdapter/8.1.6.2.9/AnyThinkMintegralAdapter-8.1.6.2.9.zip",
            checksum: "025cf6526e309737c2eb943ecc47536b4848c0057a7ec7df83f770c47ce488d8"
        ),
        .target(
            name: "TPNMediationMintegralAdapterTarget",
            dependencies: [
                "AnyThinkMintegralAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ],
            path: "Sources/TPNMediationMintegralAdapterTarget"
        )
    ]
)
