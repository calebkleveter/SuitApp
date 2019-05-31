import Foundation
import Suit

final class BootComponent: CompositeComponent {
    override func viewDidLoad() {
        super.viewDidLoad()

        let introLabel = Label(text: "Hello...")
        introLabel.font = .ofType(.system, category: .veryLarge)
        introLabel.width = 100%
        introLabel.height = 30~
        introLabel.horizontalArrangement = .center

        self.view.add(subview: introLabel)
        self.view.justifyContent = .center
    }
}
