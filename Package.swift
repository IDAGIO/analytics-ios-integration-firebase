// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.macOS(.v10_13), .iOS(.v10), .tvOS(.v10)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios.git", from: "4.1.3"),
      .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "7.5.0"),
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
              "Segment",
              .product(name: "FirebaseAnalytics", package: "Firebase"),
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
