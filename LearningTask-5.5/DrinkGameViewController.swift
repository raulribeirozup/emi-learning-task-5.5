//
//  ViewController.swift
//  LearningTask-5.5
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class DrinkGameViewController: UIViewController {
    
    
    @IBOutlet weak var emojiAnteriorLabel: UILabel!
    @IBOutlet weak var emojiAtualLabel: UILabel!
    
    var drinkGame: DrinkGame? {
        didSet {
            guard isViewLoaded, let drinkGame = drinkGame else { return }
            atualizaView(para: drinkGame)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let drinkGame = drinkGame {
            atualizaView(para: drinkGame)
        }
    }
    
    
    @IBAction func botaoJogarPressionado(_ sender: UIButton) {
        let numeroSorteado = Int.random(in: 1...3)
        
        drinkGame?.alteraEmojiAtual(numeroSorteado)
    }
    
    func atualizaView(para drinkGame: DrinkGame) {
        emojiAnteriorLabel.text = drinkGame.defineEmoji(para: drinkGame.emojiAnterior)
        emojiAtualLabel.text = drinkGame.defineEmoji(para: drinkGame.emojiAtual)
        self.view.backgroundColor = BackgroundColor.para(DrinkGame.Bebida(rawValue: drinkGame.emojiAtual)!)
    }
    

}

