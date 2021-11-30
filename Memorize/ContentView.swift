//
//  ContentView.swift
//  Memorize
//
//  Created by Pedro Henriques on 27/11/2021.
//

import SwiftUI

struct ContentView: View {
    var emojis: [String] = ["🇵🇹", "🇸🇪", "🇰🇷", "🇫🇷", "🇧🇬", "🇷🇴", "🇮🇹", "🇨🇦", "🇺🇸" , "🇳🇱" ,"🇯🇵", "🇩🇰", "🇵🇱", "🇮🇳","🛫"]
    @State var emojiCount = 6
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        cardView(contentOfCard: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
        }
        .font(.largeTitle)
        .padding(.horizontal)
    }
    
    var remove: some View {
        Button{
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle.fill")
        }
    }
    
    var add: some View {
        Button{
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle.fill")
        }
    }
}


struct cardView: View {
    var contentOfCard: String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(contentOfCard).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
