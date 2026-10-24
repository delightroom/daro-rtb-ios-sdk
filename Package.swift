// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "PrebidMobile",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBid", targets: ["DaroBid", "PrebidMobile"])],
    targets: [
        .binaryTarget(name: "DaroBid", url: "https://github.com/delightroom/daro-rtb-ios-sdk/releases/download/26.10.2400-rc.2/DaroBid-26.10.2400-rc.2.zip", checksum: "ac6b06b846ecadfa58423e21ebce708f8885a098ab81eaa6c71a9066157b30d0"),
        .target(name: "PrebidMobile", path: "Sources/PrebidMobile", resources: [.process("Resources/PrivacyInfo.xcprivacy"), .process("Resources/mraid.js"), .process("Resources/omsdk.js"), .copy("Resources/DaroBidOMSDKPrivacy.bundle")])
    ]
)
