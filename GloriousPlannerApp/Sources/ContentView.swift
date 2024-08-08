import SwiftUI

public struct ContentView: View {
    public init() {}

    public var body: some View {
        VStack {
            Text("OnboadingFirstPageTitle")
                .padding()
                .font(GPAppFontFamily.Inter.extraLight.swiftUIFont(size: 24))
                .foregroundStyle(GPAppAsset.Colors.secondary.swiftUIColor)
            GPAppAsset.Assets.bellOutline.swiftUIImage
        }
    }
}


#Preview {
    ContentView()
}
