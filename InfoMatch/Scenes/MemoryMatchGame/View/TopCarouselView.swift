//
//  TopCarousselView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 04/11/21.
//
import SwiftUI

struct TopCarouselView: View {
    
    
    var model: MatchGame
    
    var body: some View {
        ZStack {

            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<model.topCards.count, id: \.self) {
                        index in
                        ZStack {
                            NewsCardView(model: model.topCards[index]).onTapGesture {
                                model.chooseNewsCard(card: &model.topCards[index])
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }.ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
    }
}

//struct TopCarouselView_Previews: PreviewProvider {
//
//    var top = [MatchGame.NewsCard(content: News(type: NewsType.Conspiracy, img: NewsImages.flatEarthTweet.rawValue, context: ["Trata-se de um perfil de rede social cujo principal conteúdo é sobre terraplanismo.", "Todos os livros de física usam conceitos que só fazem sentido para um modelo de Terra esférica, como por exemplo, a aceleração da gravidade.", "Durante o século XVII, Galileu Galilei foi condenado à prisão formal por defender o sistema heliocêntrico."]))]
//
//    static var previews: some View {
//        TopCarouselView(topCards: top)
//    }
//}
