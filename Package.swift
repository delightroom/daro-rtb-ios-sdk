// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "PrebidMobile",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBid", targets: ["DaroBid", "PrebidMobile"])],
    targets: [
        .binaryTarget(name: "DaroBid", url: "https://github.com/delightroom/daro-rtb-ios-sdk/releases/download/26.10.900-rc.1/DaroBid-26.10.900-rc.1.zip", checksum: "6caa522207a3cc38f86c6ff376461feffe334b24d1c4e1b5d682ea6085b95bf7"),
        .target(name: "PrebidMobile", path: "Sources/PrebidMobile", resources: [.process("Resources/PrivacyInfo.xcprivacy"), .process("Resources/mraid.js"), .process("Resources/omsdk.js"), .copy("Resources/DaroBidOMSDKPrivacy.bundle")])
    ]
)
