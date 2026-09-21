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
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", .exact("1.3.16"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.7.0/AgoraRtcKit.xcframework.zip",
            checksum: "24ce267990e16f6b0229aa2e848fc8f85320536e6b9db63cb13001ae16bc7511"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.7.0/Agoraffmpeg.xcframework.zip",
            checksum: "3041b5296ff4ee9a28a16c70c16eb55441d71a8d5afbc1e3bf0640ce4dc6c904"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.7.0/AgoraSoundTouch.xcframework.zip",
            checksum: "14fe4a86e7535771e922139f308f3d3e64bf68d1ffe5170f6b584f908b621567"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.7.0/video_dec.xcframework.zip",
            checksum: "ee94b8377f4213288f0b81bbf817a49a250260c3639b583956f185537c3048aa"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
