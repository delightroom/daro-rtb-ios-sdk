// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "PrebidMobile",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBid", targets: ["DaroBid", "PrebidMobile"])],
    targets: [
        .binaryTarget(name: "DaroBid", url: "https://github.com/delightroom/daro-rtb-ios-sdk/releases/download/26.10.1201/DaroBid-26.10.1201.zip", checksum: "78cc0f7cc439306d9203f79527d98e36c3cb4766413e3d4b7bf458e4d5424e8f"),
        .target(name: "PrebidMobile", path: "Sources/PrebidMobile", resources: [.process("Resources/PrivacyInfo.xcprivacy"), .process("Resources/mraid.js"), .process("Resources/omsdk.js"), .copy("Resources/DaroBidOMSDKPrivacy.bundle")])
    ]
)
