import ProjectDescription

let project = Project(
    name: "GloriousPlannerApp",
    targets: [
        .target(
            name: "GloriousPlannerApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.GloriousPlannerApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"]
                ]
            ),
            sources: ["GloriousPlannerApp/Sources/**"],
            resources: ["GloriousPlannerApp/Resources/**"],
            dependencies: [],
            settings: .settings(base: [
                "SUPPORTED_PLATFORMS": "iphonesimulator iphoneos",
                "TARGETED_DEVICE_FAMILY": "1",
                "IPHONEOS_DEPLOYMENT_TARGET": "18.0",
                "SWIFT_VERSION": "6.0"
            ])
        ),
        .target(
            name: "GloriousPlannerAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.GloriousPlannerAppTests",
            infoPlist: .default,
            sources: ["GloriousPlannerApp/Tests/**"],
            resources: [],
            dependencies: [.target(name:
                                    "GloriousPlannerApp"
                                  )],
            settings: .settings(base: [
                "SWIFT_VERSION": "6.0"
            ])
        ),
    ]
)
