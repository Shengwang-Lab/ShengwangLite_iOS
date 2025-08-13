// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShengwangLite_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agoraffmpeg", "AgoraSoundTouch", "ShengwangInfra_iOS"]),
        .library(name: "VideoCodecDec", targets: ["AgoraVideoDecoderExtension", "video_dec"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", from: "1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/AgoraRtcKit.xcframework.zip",
            checksum: "9bc64d927f932a4f81d1dc577b229145f43948312ba2e526b4a9965386f9dece"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/Agoraffmpeg.xcframework.zip",
            checksum: "8435dca2a2a91eaa5b0fe1e0921f3b2eb6f107c703f233234a68012b62429454"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/AgoraSoundTouch.xcframework.zip",
            checksum: "09d3e6af9697a9f97d7ae8cb86fb5629b18f6f6ffd41014221d0bfa7ee8848e5"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "5c8095231849e33d6f8414501cc3e8199921778c86ac933ded1ef0e8dba548fe"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/video_dec.xcframework.zip",
            checksum: "b044b6383a43952e421f66d4c7479e38a9b1d4db5d6efcd4d4347f0b3f67cf49"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
