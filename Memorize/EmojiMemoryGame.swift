//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Pedro Henriques on 01/12/2021.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    
    private static let emojis: [String] = ["🇵🇹", "🇸🇪", "🇰🇷", "🇫🇷", "🇧🇬", "🇷🇴", "🇮🇹", "🇨🇦", "🇺🇸" , "🇳🇱" ,"🇯🇵", "🇩🇰", "🇵🇱", "🇮🇳","🛫"]
    
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
    @Published private var model = createMemoryGame()
    
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
