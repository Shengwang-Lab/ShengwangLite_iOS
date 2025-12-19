// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShengwangLite_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agoraffmpeg", "AgoraSoundTouch", "video_dec", "ShengwangInfra_iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", from: "1.3.4")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2-dev.4/AgoraRtcKit.xcframework.zip",
            checksum: "e9a5b2ebf82b5542218fed4c5afc6e74aaf2f4b4f56465ec8686ed412f7f67fd"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2-dev.4/Agoraffmpeg.xcframework.zip",
            checksum: "6349990ab5593aff34663f28cb43e906f0259c10a870ca6b199633f001524555"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2-dev.4/AgoraSoundTouch.xcframework.zip",
            checksum: "28d3b5bb4282492a956fe6b1c4672041fbf5a4b8ddccab88f2bb8b888db55fd3"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2-dev.4/video_dec.xcframework.zip",
            checksum: "95b6edca263a01ff0935b5168f0327d0dd945b4e6011d9b212af1faaa1f21ec6"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
