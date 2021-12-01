//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Pedro Henriques on 01/12/2021.
//

import SwiftUI


class EmojiMemoryGame {
    static let emojis: [String] = ["🇵🇹", "🇸🇪", "🇰🇷", "🇫🇷", "🇧🇬", "🇷🇴", "🇮🇹", "🇨🇦", "🇺🇸" , "🇳🇱" ,"🇯🇵", "🇩🇰", "🇵🇱", "🇮🇳","🛫"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
