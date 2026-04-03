import UIKit

// MARK: - Cross-module protocol with property requirement
// This pattern causes a Periphery false positive: "redundant public accessibility"
// on the conforming type's `bundle` property in another module.

@MainActor
public protocol Storyboardable {
    static var bundle: Bundle { get }
}

extension Storyboardable where Self: UIViewController {
    /// Instantiate the initial VC from the storyboard whose name matches the class name.
    /// Uses `bundle` from the conforming type to locate the storyboard resource.
    public static func instantiateInitialFromStoryboard() -> Self {
        let name = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        return storyboard.instantiateInitialViewController() as! Self
    }
}
