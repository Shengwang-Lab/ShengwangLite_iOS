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
            checksum: "ed4ab3f4019e6a95700d74c1433a3a62fb7716f90c55113d88371b9a1c82a000"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/Agoraffmpeg.xcframework.zip",
            checksum: "d5013c019f0c08ca11d1b447854f97dd92ee51d477ee9d062da56e352e959037"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/AgoraSoundTouch.xcframework.zip",
            checksum: "a98238a5430be69bea1d432a10e1c1f942c2736bb3573c93a7f63e108bbb3007"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "894a625c17976ec5ec53934cd9c6903641fac07f9d86e00e7878184d50cc3f6c"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.0.TEST1/video_dec.xcframework.zip",
            checksum: "f2ec2df85335a6e6642fa01ad781cca4deda9854c20c157f8e60db0ed011c592"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
