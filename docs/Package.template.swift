// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "FFmpeg",
            targets: ["FFmpeg"]
        ),
    ],
    targets: [
        .target(
            name: "FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls",
                "Libdovi", "Libdav1d", "Libuavs3d", "Libopus"
            ],
            path: "Sources/FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "Libavcodec",
            url: "\(Libavcodec_url)",
            checksum: "\(Libavcodec_checksum)"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "\(Libavdevice_url)",
            checksum: "\(Libavdevice_checksum)"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "\(Libavformat_url)",
            checksum: "\(Libavformat_checksum)"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "\(Libavfilter_url)",
            checksum: "\(Libavfilter_checksum)"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "\(Libavutil_url)",
            checksum: "\(Libavutil_checksum)"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "\(Libswresample_url)",
            checksum: "\(Libswresample_checksum)"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "\(Libswscale_url)",
            checksum: "\(Libswscale_checksum)"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//
        //AUTO_GENERATE_TARGETS_END//
    ]
)
