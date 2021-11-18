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
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GameGradient.newsMatchGame.getGradient(), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Spacer()
                
                
                TopCarouselView(topCards: model.topCards).onTapGesture {
                    //
                }
                
                
                BottomCarouselView(bottomCards: model.bottomCards).onTapGesture {
                    //
                }
                
                
                Spacer()
                MatchButtonsView(model: model)
            }
            
        }
    }
}

struct MatchGameView_Previews: PreviewProvider {
    static var previews: some View {
        MatchGameView(model: MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: false))
    }
}
