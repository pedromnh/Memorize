//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Pedro Henriques on 01/12/2021.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    static let emojis: [String] = ["🇵🇹", "🇸🇪", "🇰🇷", "🇫🇷", "🇧🇬", "🇷🇴", "🇮🇹", "🇨🇦", "🇺🇸" , "🇳🇱" ,"🇯🇵", "🇩🇰", "🇵🇱", "🇮🇳","🛫"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
