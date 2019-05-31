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
        introLabel.textColor = Color(red: 38/255, green: 38/255, blue: 38/255)

        self.animate(label: introLabel, property: \.textColor, to: Color(red: 38/255, green: 38/255, blue: 38/255, alpha: 0))

        self.view.add(subview: introLabel)
        self.view.justifyContent = .center
    }

    func animate<T>(label: Label, property: ReferenceWritableKeyPath<Label, T>, to value: T, duration: Double = 1.0) {
        let originalValue = label[keyPath: property]

        label.animate(duration: duration, delay: 0, easing: .linear, changes: {
            label[keyPath: property] = value
        }, completion: {
            self.animate(label: label, property: property, to: originalValue, duration: duration)
        })
    }
}
