//
//  MatchGameView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 18/11/21.
//

//
//  MatchGameView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//
import SwiftUI

struct MatchGameView: View {
    
    var model: MatchGame
    @State private var isShowingModal = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GameGradient.newsMatchGame.getGradient(), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Spacer()
                TopCarouselView(model: model)
                BottomCarouselView(model: model)
                Spacer()
                MatchButtonsView(model: model)
            }
        }.navigationBarHidden(true)
    }
    
    func generateModalView(index: Int) -> ExpandedNewsCardView {
        return ExpandedNewsCardView(news: model.topCards[index].content, isShowing: $isShowingModal)
    }
}

struct MatchGameView_Previews: PreviewProvider {
    static var previews: some View {
        MatchGameView(model: MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: false))
    }
}
