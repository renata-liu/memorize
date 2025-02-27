//
//  Theme.swift
//  memorize
//
//  Created by Renata Liu on 2025-02-26.
//

import Foundation

struct Theme {
    let name: String
    let color: String
    let numberOfPairs: Int
    let emojis: [String]
}

let themes: [Theme] = [
    (Theme(name: "school", color: "brown", numberOfPairs: 3, emojis: ["📚", "🎓", "📖", "🎒"])),
    (Theme(name: "beachy", color: "mint", numberOfPairs: 4, emojis: ["🌊", "🏖️", "🌅", "🌴", "🏄‍♀️", "☀️"])),
    (Theme(name: "nature", color: "green", numberOfPairs: 5, emojis: ["🌿", "🌳", "🌲", "🌞", "🌊", "🌅", "🍃"])),
    (Theme(name: "love", color: "pink", numberOfPairs: 6, emojis: ["💖", "💘", "💕", "💓", "💗", "💞", "❤️", "💐"])),
    (Theme(name: "animals", color: "yellow", numberOfPairs: 7, emojis: ["🐻‍❄️", "🐻", "🐶", "🐱", "🐭", "🐹", "🐰", "🐢", "🐍", "🐊"])),
    (Theme(name: "sweets", color: "purple", numberOfPairs: 8, emojis: ["🍰", "🍩", "🍪", "🍭", "🍮", "🍦", "🍫", "🍬", "🎂", "🍡"]))]
