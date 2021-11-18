//
//  BottomCarouselView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//
import SwiftUI

struct BottomCarouselView: View {

    var bottomCards: [MatchGame.NewsTypeCard]

    var body: some View {
        ZStack {

            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(bottomCards, id: \.self) {
                        card in
                        ZStack {
                            NewsTypeCardView(model: card)
                        }
                    }.ignoresSafeArea()
                }
            }

        }.ignoresSafeArea()
            .frame(width: 300, height: 300, alignment: .center)


    }
}

struct BottomCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        let bottomCards = [MatchGame.NewsTypeCard(content: .Satire), MatchGame.NewsTypeCard(content: .Conspiracy), MatchGame.NewsTypeCard(content: .ClickBait)]
        BottomCarouselView(bottomCards : bottomCards)
    }
}
