//
//  TopCarousselView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 04/11/21.
//

import SwiftUI

struct TopCarouselView: View {
    
    var topCards: [MatchGame.NewsCard]
    
    var body: some View {
        ZStack {
            
            Color(.black)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(topCards, id: \.self) {
                        card in
                        let img = card.content.img
                        ZStack {
                            Image(img)
                                .resizable()
                                .frame(width: 300, height: 300)
                                .background(Color.white)
                                .cornerRadius(10)
                        }.padding()
                    }.ignoresSafeArea()
                }
            }
            
        }.ignoresSafeArea()
        
        
    }
}

struct TopCarouselView_Previews: PreviewProvider {
    @State static var cards = [MatchGame.NewsCard(content: News(type: NewsType.Conspiracy, img: NewsImages.flatEarthTweet.rawValue, context: ["Trata-se de um perfil de rede social cujo principal conteúdo é sobre terraplanismo.", "Todos os livros de física usam conceitos que só fazem sentido para um modelo de Terra esférica, como por exemplo, a aceleração da gravidade.", "Durante o século XVII, Galileu Galilei foi condenado à prisão formal por defender o sistema heliocêntrico."]))]
    static var previews: some View {
        TopCarouselView(topCards: cards)
    }
}
