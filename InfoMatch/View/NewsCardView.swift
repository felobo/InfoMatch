//
//  NewsCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct NewsCardView: View {
    
    let img: String
    let tips: [String]
    
    var body: some View {
        ZStack {
            VStack {
                Image(img)
                    .resizable()
                Text("Contexto")
                    .font(.custom("SF Pro Rounded", size: 30))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                ForEach(tips, id: \.self) { tip in
                    Text(tip)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }.padding()
        }
    }
}

struct NewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCardView(img: "tc1", tips: ["Trata-se de um perfil de rede social cujo principal conteúdo é sobre terraplanismo.", " Todos os livros de física usam conceitos que só fazem sentido para um modelo de Terra esférica, como por exemplo, a aceleração da gravidade.", "Durante o século XVII, Galileu Galilei foi condenado à prisão formal por defender o sistema heliocêntrico."])
    }
}
