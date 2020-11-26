// swift-tools-version:5.3

import PackageDescription

#if os(macOS)
let package = Package(
  name: "CryptoSwift2",
  platforms: [
    .macOS(.v10_12), .iOS(.v9), .tvOS(.v9)
  ],
  products: [
    .library(
      name: "CryptoSwift2",
      targets: ["CryptoSwift2"]
    )
  ],
  targets: [
    .target(
        name: "CryptoSwift2",
        dependencies: []
    ),
    .testTarget(name: "TestsPerformance", dependencies: ["CryptoSwift2"])
  ]
)
#else
let package = Package(
  name: "CryptoSwift2",
  platforms: [
    .macOS(.v10_12), .iOS(.v9), .tvOS(.v9)
  ],
  products: [
    .library(
      name: "CryptoSwift2",
      targets: ["CryptoSwift2"]
    )
  ],
  targets: [
    .target(name: "CryptoSwift2"),
    .testTarget(name: "CryptoSwiftTests", dependencies: ["CryptoSwift2"]),
    .testTarget(name: "TestsPerformance", dependencies: ["CryptoSwift2"])
  ],
  swiftLanguageVersions: [.v5]
)
#endif
