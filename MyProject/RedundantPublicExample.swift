import UIKit
import SampleDS

// MARK: - Periphery false positive: "redundant public accessibility"
//
// Periphery reports:
//   RedundantPublicExample.swift:XX:XX: warning: Property 'bundle' has redundant public accessibility
//
// WHY IT'S FALSE POSITIVE:
//   • `Storyboardable` is a public protocol (defined in SampleDS module)
//   • It requires `static var bundle: Bundle { get }`
//   • `SampleViewController` is a public class conforming to `Storyboardable`
//   • Therefore `bundle` MUST be `public` — removing `public` is a compile error
//   • But Periphery sees that `bundle` is never accessed directly from outside this module
//     (it's only used via the protocol extension's `instantiateInitialFromStoryboard()`)
//   • So Periphery considers `public` redundant — which is technically wrong
//
// REPRODUCE:
//   periphery scan  →  "Property 'bundle' has redundant public accessibility"
//
// WORKAROUND options:
//   1. `// periphery:ignore` — but then tests scan reports "superfluous ignore comment"
//   2. `disable_redundant_public_analysis: true` — disables ALL redundant-public checks (too broad)
//   3. `superfluous_ignore_comments: false` in config + `// periphery:ignore` — best targeted fix

final class SampleViewController: UIViewController, Storyboardable {

    // ⚠️ Periphery reports: "Property 'bundle' has redundant public accessibility"
    // But removing `public` is a compile error because `Storyboardable` protocol is public.
    public static var bundle: Bundle { Bundle(for: SampleViewController.self) }
}
