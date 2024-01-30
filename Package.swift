// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name: "DataSources",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "DataSources", targets: ["DataSources"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ra1028/DifferenceKit.git", exact: "1.3.0")
  ],
  targets: [
    .target(
      name: "DataSources",
      dependencies: [
        .product(name: "DifferenceKit", package: "DifferenceKit")
      ]
    ),
  ]
)
