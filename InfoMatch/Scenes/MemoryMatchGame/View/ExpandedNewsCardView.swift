//
//  NewsCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct ExpandedNewsCardView: View {
    
    var model: MatchGame.NewsCard
    var body: some View {
        
        ZStack {
            
            VStack {
                ScrollView {
                    Image(model.content.img)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.8)
                        .aspectRatio(contentMode: .fit)
                    Text("Contexto")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    ForEach(model.content.context, id: \.self) { tip in
                        Text(tip)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .padding()
                    }
                }
            }
        }
    }
}

struct ExpandedNewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandedNewsCardView(model: MatchGame.NewsCard(content: News(type: NewsType.Conspiracy, img: NewsImages.flatEarthTweet.rawValue, context: ["Trata-se de um perfil de rede social cujo principal conteúdo é sobre terraplanismo.", "Todos os livros de física usam conceitos que só fazem sentido para um modelo de Terra esférica, como por exemplo, a aceleração da gravidade.", "Durante o século XVII, Galileu Galilei foi condenado à prisão formal por defender o sistema heliocêntrico."])))
    }
}
