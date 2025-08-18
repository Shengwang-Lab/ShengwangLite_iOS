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
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0/AgoraRtcKit.xcframework.zip",
            checksum: "73b114e2feee309afd9a83aec82b0701f8a2fc3c4a4e688700e44ef23a5907bd"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0/Agoraffmpeg.xcframework.zip",
            checksum: "84c0d01556739e7b247b9e7753b951a9f6ef96bb00d10c44f9ac2c56d6a13f33"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0/AgoraSoundTouch.xcframework.zip",
            checksum: "009bb3e960fd46c6f65c14e7f165240281f04621adf39b5583ff6136cb466383"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "e76138f695e0b3c97e57dfa6ab2d26286270a6c3286479cd9dc6e6ec2766ad57"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0/video_dec.xcframework.zip",
            checksum: "2844c58a144bb9b141306d0ca607b0d4504cc73f60d6fc6c832d28fdd560f139"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
