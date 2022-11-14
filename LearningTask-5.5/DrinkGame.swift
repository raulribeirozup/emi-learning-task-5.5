//
//  DrinkGame.swift
//  LearningTask-5.5
//
//  Created by Raul Ribeiro on 14/11/22.
//

import Foundation

struct DrinkGame {
    
    enum Bebida: Int {
        case indefinida = 0
        case leite = 1
        case cerveja = 2
        case whisky = 3
    }
    
    private(set) var emojiAnterior: Int = 0
    private(set) var emojiAtual: Int = 0
    
    func defineEmoji(para bebida: Int) -> String {
        switch bebida {
        case Bebida.leite.rawValue:
            return "🥛"
        case Bebida.cerveja.rawValue:
            return "🍺"
        case Bebida.whisky.rawValue:
            return "🥃"
        default:
            return "🙋"
        }
    }
    
    mutating private func alteraEmojiAnterior() {
        self.emojiAnterior = emojiAtual
    }
    
    mutating func alteraEmojiAtual(_ emojiSorteado: Int) {
        alteraEmojiAnterior()
        self.emojiAtual = emojiSorteado
    }
}
