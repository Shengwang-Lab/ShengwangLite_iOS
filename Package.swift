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
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST2/AgoraRtcKit.xcframework.zip",
            checksum: "1774880caece05a74c8b2213881510254c355984d015a5a6febb30972b5b41cf"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST2/Agoraffmpeg.xcframework.zip",
            checksum: "2849fd664ec0c773f4700d5a210c1d76906312c6b3a5e6660ab91a8b456a23fe"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST2/AgoraSoundTouch.xcframework.zip",
            checksum: "b031b10d692dd80ec885e87b27959e625219bff653e1f1b6ec83a28f12d1874f"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST2/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "d5e951664fb49d7be72175f081bd0a242aea88168e1a2cea6f949ed4adb71732"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST2/video_dec.xcframework.zip",
            checksum: "cc8cef41c7b0d537f6768daa45252d4c3440aebdba63593e5e625bd64641a462"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
