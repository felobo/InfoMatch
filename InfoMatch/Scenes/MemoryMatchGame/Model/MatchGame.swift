//
//  MatchGame.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 20/10/21.
//

import Foundation

class MatchGame {

    private var level: Int
    private var dataBase: [News] = []
    private(set) var topCards: Array<NewsCard> = []
    private(set) var bottomCards: Array<NewsTypeCard> = []
    var isFinished: Bool {
        return topCards.filter{ !$0.isMatched }.isEmpty
    }
    
    func chooseNewsCard(card: inout NewsCard) {
        card.isFacedUp = true
    }
    
    func chooseNewsTypeCard(card: inout NewsTypeCard) {
        card.isFacedUp = true
    }
    
    func matchCards(_ newsCard: inout NewsCard, _ newsTypeCard: inout NewsTypeCard) {
        if newsCard.content.type == newsTypeCard.content {
            newsCard.isMatched = true
            newsTypeCard.isMatched = true
        } else {
            newsCard.isFacedUp = false
            newsTypeCard.isFacedUp = false
        }
    }
    
    //Passing function createCardContent to init
    init(level: Int, dataBase: [News], numberOfPairOfCards: Int, createTopCardContent: (Int) -> News) {
        self.level = level
        self.dataBase = dataBase
        let dataSet = dataBase.shuffled()
        createCards(newsSet: dataSet)
    }
    
    func createCards(newsSet: [News]) {
        topCards = []
        bottomCards = []
        for news in newsSet[0...getTotalCards(level: level)] {
            topCards.append(NewsCard(content: news))
            bottomCards.append(NewsTypeCard(content: news.type))
        }
        topCards.shuffle()
        bottomCards.shuffle()
    }
    
    struct NewsCard: Identifiable{
        var isMatched: Bool = false
        var isFacedUp: Bool = false
        let content: News
        let id: UUID = UUID()
    }
    
    struct NewsTypeCard: Identifiable {
        var isMatched: Bool = false
        var isFacedUp: Bool = false
        let content: NewsType
        let id: UUID = UUID()
    }
    
    func getTotalCards(level: Int) -> Int {
        var result = 3 + (level % 2)
        result = result < dataBase.count ? result : dataBase.count
        return result
    }
    
}
