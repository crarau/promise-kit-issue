import PackageDescription

let package = Package(
    name: "Promise",
    targets: [
    ],
    dependencies: [
        .Package(url: "https://github.com/mxcl/PromiseKit.git", majorVersion: 4)
    ]
)
