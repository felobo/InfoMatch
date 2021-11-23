//
//  NewsTypeCardView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 28/10/21.
//

import SwiftUI

struct NewsTypeCardView: View {
    
    @ObservedObject var model: MatchGame.NewsTypeCard
    
    var body: some View {
        ZStack{
            Color(.white)
            VStack {
                if !(model.cardState == .facedDown) {
                    Text(model.content.rawValue)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    Text(model.content.getNewsTypeDescription())
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        .padding(.all)
                }
                else {
                    Image("cardbg")
                        .resizable()
                        .background(Color.white)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }.cornerRadius(12)
            .frame(width: 250, height: 250)
    }
    
    var facedUp: some View {
        VStack {
            Text(model.content.rawValue)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.black)
            Text(model.content.getNewsTypeDescription())
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .padding(.all)
        }
    }
}

struct NewsTypeCardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = MatchGame.NewsTypeCard(content: NewsType.ClickBait)
        NewsTypeCardView(model: card)
    }
}
