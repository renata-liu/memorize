//
//  ContentView.swift
//  memorize
//
//  Created by Renata Liu on 2025-02-19.
//

import SwiftUI

struct ContentView: View {
    let beachy = ["🌊", "🏖️", "🌅", "🌴",
                  "🌊", "🏖️", "🌅", "🌴"]
    let love = ["💖", "💘", "💕", "💓", "💗", "💞",
                "💖", "💘", "💕", "💓", "💗", "💞"]
    let sweets = ["🍰", "🍩", "🍪", "🍭", "🍮", "🍦", "🍫", "🍬",
                  "🍰", "🍩", "🍪", "🍭", "🍮", "🍦", "🍫", "🍬"]
    
    @State var selectedTheme = ["🌊", "🏖️", "🌅", "🌴",
                                "🌊", "🏖️", "🌅", "🌴"].shuffled()
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView {
                cards
            }
            
            Spacer()
            
            HStack {
                beachyTheme
                loveTheme
                sweetTheme
            }
        }
        .padding()
    }
    
    func chooseTheme(themeEmojis: [String], themeName: String, imageName: String) -> some View {
        Button(action: {
            selectedTheme = themeEmojis.shuffled()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .imageScale(.large)
                Text(themeName)
                    .font(.caption)
            }
        })
    }
    
    var beachyTheme: some View {
        chooseTheme(themeEmojis: beachy, themeName: "Beachy", imageName: "beach.umbrella")
    }
    
    var loveTheme: some View {
        chooseTheme(themeEmojis: love, themeName: "Love", imageName: "heart.circle")
    }
    
    var sweetTheme: some View {
        chooseTheme(themeEmojis: sweets, themeName: "Sweets", imageName: "birthday.cake")
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
            ForEach(0..<selectedTheme.count, id: \.self) { index in
                CardView(content: selectedTheme[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.mint)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack {
            Group {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 3)
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
