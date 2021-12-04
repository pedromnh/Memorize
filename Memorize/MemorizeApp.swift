//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Pedro Henriques on 27/11/2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
