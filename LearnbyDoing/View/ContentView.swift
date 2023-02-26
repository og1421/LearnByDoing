//
//  ContentView.swift
//  LearnbyDoing
//
//  Created by Orlando Moraes Martins on 23/02/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    var cards: [Card] = cardData
    
    //MARK: - Body
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
                    CardView(card: cards[item])
                }
            }//: HStack
            .padding(20)
        }//: Scroll
    }
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
