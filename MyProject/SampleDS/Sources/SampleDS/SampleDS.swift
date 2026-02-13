import SwiftUI

public struct ClearButtonStyle: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}

extension ButtonStyle where Self == ClearButtonStyle {
    /// Remove SwiftUI default button styles with highlight and other styles.
    public static var clear: Self {
        ClearButtonStyle()
    }
}
