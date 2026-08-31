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
        .package(url: "https://github.com/Shengwang-Lab/ShengwangInfra_iOS.git", .exact("1.3.5"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.4/AgoraRtcKit.xcframework.zip",
            checksum: "3630dfb26f36f532cb8cfdec61c6b5abeb6927b5954cde06d29ff5c78d8865cf"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.4/Agoraffmpeg.xcframework.zip",
            checksum: "159a765b310bae8c695b8687db80227553ecc4725d5f5f2523cad4bbaaa3ed8f"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.4/AgoraSoundTouch.xcframework.zip",
            checksum: "fe0546ce7e77c1d1c152c8a4c2889b998614411c68e288cf9be3596a8e80c467"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.shengwang.cn/swiftpm/ShengwangLite_iOS/4.6.4/video_dec.xcframework.zip",
            checksum: "9bdc2e19d40cbd6f89b8e4c9a4b17bf6b36d83a887434334213f1069f47c8ec5"
        ),
        .target(
            name: "ShengwangInfra_iOS",
            dependencies: [
                .product(name: "ShengwangInfra_iOS", package: "ShengwangInfra_iOS")
            ]
        )
    ]
)
