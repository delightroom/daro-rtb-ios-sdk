// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "PrebidMobile",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBid", targets: ["DaroBid", "PrebidMobile"])],
    targets: [
        .binaryTarget(name: "DaroBid", url: "https://github.com/delightroom/daro-rtb-ios-sdk/releases/download/26.10.2500-rc.1/DaroBid-26.10.2500-rc.1.zip", checksum: "f2b6e50b99c8314610129126754cc3c03323202ab99dd7f8e93858bbcae9175e"),
        .target(name: "PrebidMobile", path: "Sources/PrebidMobile", resources: [.process("Resources/PrivacyInfo.xcprivacy"), .process("Resources/mraid.js"), .process("Resources/omsdk.js"), .copy("Resources/DaroBidOMSDKPrivacy.bundle")])
    ]
)
