//
//  NewsTypeCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct NewsTypeCardView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 16)
            shape.foregroundColor(.orange)
            shape.strokeBorder(lineWidth: 3.0).foregroundColor(.white)
            
            VStack {
                Text(title)
                    .fontWeight(.bold).font(.largeTitle)
                    .foregroundColor(.white)
                Text(description)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .font(.custom("Helvetica Neue", size: 20))
                    .padding()
                    
            }.padding(.all)
        }
    }
}

struct NewsTypeCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsTypeCardView(title: "Teoria da conspiração", description: "Tenta explicar de forma simples realidades complexas como resposta ao medo ou incerteza, muitas vezes rejeitando os especialistas e as autoridades")
    }
}
