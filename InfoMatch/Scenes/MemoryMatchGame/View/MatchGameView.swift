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
            TopCarouselView(topCards: model.topCards)
        }
    }
}

struct MatchGameView_Previews: PreviewProvider {
    static var previews: some View {
        MatchGameView(model: MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: false))
    }
}
