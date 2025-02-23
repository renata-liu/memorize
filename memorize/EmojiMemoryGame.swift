//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Renata Liu on 2025-02-22.
//

import SwiftUI

class EmojiMemoryGame {
    private var model = MemoryGame(numberOfPairsOfCards: 4) { index in
            return ["🙈", "😍", "🤑", "😋", "💋", "🤤", "🔥", "🫣"][index]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
