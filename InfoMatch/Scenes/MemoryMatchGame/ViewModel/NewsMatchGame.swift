//
//  NewsMatchGame.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 22/10/21.
//

import SwiftUI

class NewsMatchGame: ObservableObject {
    
    static let newsSet: Array<News> = NewsDataBase().dataBase
//
//    static func createMatchGame() -> MatchGame {
//        MatchGame(dataBase: newsSet, numberOfPairOfCards: news.count, createTopCardContent: { pairIndex in
//            return NewsMatchGame.news[pairIndex]
//        }
//    }
//
//    @Published var model: MatchGame = createMatchGame()
//
//    var topCards: Array<MatchGame.NewsCard> {
//        return model.topCards
//    }
//    var bottomCards: Array<MatchGame.NewsTypeCard> {
//        return model.bottomCards
//    }
    
    
}
