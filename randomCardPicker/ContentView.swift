//
//  ContentView.swift
//  randomCardPicker
//
//  Created by Kekko Paciello on 25/01/22.
//

import SwiftUI

struct Card: Identifiable{
    var id: Int
    var image: Image
}

struct ContentView: View {
    
    let cards: [Card] = [
        .init(id: 1, image: Image("1fiori")),
        .init(id: 2, image: Image("1Picche")),
        .init(id: 3, image: Image("3fiori")),
        .init(id: 4, image: Image("4cuori")),
        .init(id: 5, image: Image("7cuori")),
        .init(id: 6, image: Image("8cuori"))
    ]
    
    @State private var pickedCardId: Int = 0
    
    var body: some View {
        VStack{
            if pickedCardId == 0{
                Image("backCard")
                    .resizable()
                    .scaledToFit()
            }else{
                cards[pickedCardId].image
                    .resizable()
                    .scaledToFit()
            }
            
            Button {
                pickedCardId = Int.random(in: 1...6)
            } label: {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.red)
                    .frame( height: 70)
                    .overlay(Text("Pick a card")
                                .foregroundColor(.white).font(.title2))
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
