//
//  NewsCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct ExpandedNewsCardView: View {
    
    @Binding var news: News
    
    var body: some View {
        ZStack {
            VStack {
                ScrollView {
                    Image(news.img)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.6)
                        .aspectRatio(contentMode: .fit)
                    Text("Contexto")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    ForEach(news.context, id: \.self) { tip in
                        Text(tip)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .padding()
                    }
                }
            }.padding()
        }
    }
}

struct ExpandedNewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandedNewsCardView(news: Binding.constant(NewsDataBase().dataBase[2]))
    }
}
