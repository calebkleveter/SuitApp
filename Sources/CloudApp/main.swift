import Foundation
import Suit

let mainFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let main = Window(rootComponent: BootComponent(), frame: mainFrame, hasTitleBar: true, title: "Vapor Cloud")

Application.create(with: main).launch()
