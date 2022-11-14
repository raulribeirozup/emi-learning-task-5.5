
import UIKit

class BackgroundColor {
    
    static func para(_ bebida: DrinkGame.Bebida) -> UIColor {
        switch bebida {
        case .cerveja:
            return UIColor(named: "Beer")!
        case .leite:
            return UIColor(named: "Milk")!
        case .whisky:
            return UIColor(named: "Whisky")!
        default:
            return .white
        }
    }
    
}
