//
//  ContentView.swift
//  memorize
//
//  Created by Renata Liu on 2025-02-19.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    let emojis = ["🙈", "😍", "🤑", "😋", "💋", "🤤", "🔥", "🫣"]
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack {
            Group {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 5)
                Text(content)
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            print("Tapped")
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
