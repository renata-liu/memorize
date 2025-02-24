//
//  memorizeApp.swift
//  memorize
//
//  Created by Renata Liu on 2025-02-19.
//

import SwiftUI

@main
struct memorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
