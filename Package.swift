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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMintegralAdapter/8.1.6.2.0/AnyThinkMintegralAdapter-8.1.6.2.0.zip",
            checksum: "593c6b2a237625d423e976aac89299073619aa020cc758339385d82af4c01724"
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
