// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NewcustomSdk",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NewcustomSdk",
            targets: ["NewcustomSdk"]),
    ],
    dependencies: [

        .package(url: "https://github.com/yazanalqasem/iPass2.0NativeiOS.git", from: "1.0.0")
       
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NewcustomSdk",
            dependencies: [
             .product(name: "iPass2.0NativeiOS", package: "iPass2.0NativeiOS")
         ],

             path: "Sources",
            resources: [
                .process("Sources/Classes/ViewDetail.swift"),
                .process("Sources/Classes/dataFile.swift"),
                ]),
        .testTarget(
            name: "NewcustomSdkTests",
            dependencies: ["NewcustomSdk"]),
    ]
)
