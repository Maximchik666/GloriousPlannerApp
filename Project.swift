import ProjectDescription

let project = Project(
    name: "GPApp",
    targets: [
        .target(
            name: "GPApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.GPApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "AccentColor",
                        "UIImageName": "AppMainIcon",
                    ],
                    "UIAppFonts": ["Resources/InterFont.ttf"],
                    "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"]
                ]
            ),
            sources: ["GloriousPlannerApp/Sources/**"],
            resources: ["GloriousPlannerApp/Resources/**"],
            dependencies: [],
            settings: .settings(base: [
                "SUPPORTED_PLATFORMS": "iphonesimulator iphoneos",
                "TARGETED_DEVICE_FAMILY": "1",
                "IPHONEOS_DEPLOYMENT_TARGET": "17.0",
                "SWIFT_VERSION": "5.0"
            ])
        ),
        .target(
            name: "GPAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.GPAppTests",
            infoPlist: .default,
            sources: ["GloriousPlannerApp/Tests/**"],
            resources: [],
            dependencies: [.target(name:
                                    "GPApp"
                                  )],
            settings: .settings(base: [
                "SWIFT_VERSION": "5.0"
            ])
        ),
    ]
)
