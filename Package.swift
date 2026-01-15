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
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", from: "1.3.5")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2/AgoraRtcKit.xcframework.zip",
            checksum: "1bb8c6a7315374d8921b582544ef5fc750c22375ecece1302f82f6454a0b1fc5"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2/Agoraffmpeg.xcframework.zip",
            checksum: "d41ed307d9ab283bb99485d5ed93102030dc8be130201ef8703db96a1a2a8f3b"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2/AgoraSoundTouch.xcframework.zip",
            checksum: "bed292103c7428ddb2bfcc6726f7e7cf8afa514389e4a30274eb56955f3aaf46"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.2/video_dec.xcframework.zip",
            checksum: "926e98921c0c4d0fce8ba0b68b0b71cc83a9a917c07c8be50ab73d10cef525f1"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
