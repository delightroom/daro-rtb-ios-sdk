// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "PrebidMobile",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBid", targets: ["DaroBid", "PrebidMobile"])],
    targets: [
        .binaryTarget(name: "DaroBid", url: "https://github.com/delightroom/daro-rtb-ios-sdk/releases/download/26.9.1800/DaroBid-26.9.1800.zip", checksum: "8cb05693f978be45baf7cdcb574c15bde7a635ef3f47e360adeb844f19ef1f9a"),
        .target(name: "PrebidMobile", path: "Sources/PrebidMobile", resources: [.process("Resources/PrivacyInfo.xcprivacy"), .process("Resources/mraid.js"), .process("Resources/omsdk.js"), .copy("Resources/DaroBidOMSDKPrivacy.bundle")])
    ]
)
