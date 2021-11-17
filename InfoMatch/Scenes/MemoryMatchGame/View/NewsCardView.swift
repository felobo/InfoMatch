//
//  NewsCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//

import SwiftUI

struct NewsCardView: View {
    
    @Binding var model: MatchGame.NewsCard
    var image: String {
        return model.isFacedUp ? model.content.img : "cardbg"
    }
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .background(Color.white)
                .cornerRadius(10)
                .aspectRatio(contentMode: .fit)
        }.frame(width: 300, height: 300)
            .padding()
    }
}

struct NewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCardView(model: Binding.constant(MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: true).topCards[0]))
    }
}
