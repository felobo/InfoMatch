//
//  NewsTypeCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct NewsTypeCardView: View {
    
    var model: MatchGame.NewsTypeCard
    
    var body: some View {
        ZStack{
            VStack {
                if model.isFacedUp {
                    Text(model.content.rawValue)
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    Text(model.content.getNewsTypeDescription())
                        .fontWeight(.semibold)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                }
                else {
                    Image("cardbg")
                        .resizable()
                        .background(Color.white)
                        .aspectRatio(contentMode: .fit)
                }
            }.cornerRadius(12)
        }.frame(width: 250, height: 250)
    }
}

struct NewsTypeCardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = MatchGame.NewsTypeCard(isMatched: false, isFacedUp: true, content: NewsType.ClickBait)
        NewsTypeCardView(model: card)
    }
}
