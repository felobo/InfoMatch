//
//  NewsCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//
import SwiftUI

struct NewsCardView: View {
    
    @ObservedObject var model: MatchGame.NewsCard
    var image: String {
        return (model.cardState == .facedDown ? "cardbg"  : model.content.img)
    }
    var body: some View {
        ZStack {
            if model.cardState == .selected {
                card.border(Color.green)
            }
            else {
                card
            }
        }.cornerRadius(12).frame(width: 250, height: 250)
    }
    
    var card: some View {
        Image(image)
            .resizable()
            .background(Color.white)
            .aspectRatio(contentMode: .fit)
    }
}

//struct NewsCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsCardView(model: MatchGame.NewsCard(content: News(type: NewsType.Conspiracy, img: NewsImages.flatEarthTweet.rawValue, context: ["Trata-se de um perfil de rede social cujo principal conteúdo é sobre terraplanismo.", "Todos os livros de física usam conceitos que só fazem sentido para um modelo de Terra esférica, como por exemplo, a aceleração da gravidade.", "Durante o século XVII, Galileu Galilei foi condenado à prisão formal por defender o sistema heliocêntrico."])))
//    }
//}
