//
//  NewsTypeCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct NewsTypeCardView: View {
    
    @Binding var model: MatchGame.NewsTypeCard
    let title: String
    let description: String
    
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack {
                if model.isFacedUp {
                    Text(title)
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Text(description)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .padding()
                }
                else {
                    Image("cardbg")
                        .resizable()
                        .background(Color.white)
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                }
                
            }.padding(.all)
            
        }.frame(width: 300, height: 300)
    }
}

struct NewsTypeCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsTypeCardView(model: Binding.constant(MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: true).bottomCards[0]),title: "Teoria da conspiração", description: "Tenta explicar de forma simples realidades complexas como resposta ao medo ou incerteza, muitas vezes rejeitando os especialistas e as autoridades")
    }
}
