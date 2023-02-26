//
//  CardView.swift
//  LearnbyDoing
//
//  Created by Orlando Moraes Martins on 23/02/23.
//

import SwiftUI

struct CardView: View {
    //MARK: - Properties
    var card: Card
    
    //MARK: - Body
    var body: some View {
        ZStack{
            Image(card.imageName)
            
            VStack{
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }//: Vstack
            .offset(y: -218)
            
            
            Button {
                //Action
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }//: Hstack
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
                .offset(y: 210)
            
        }//: HSTACK
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

//MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
