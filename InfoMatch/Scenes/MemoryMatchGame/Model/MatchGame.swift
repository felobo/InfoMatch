//
//  MatchGame.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 20/10/21.
//

import Foundation

class MatchGame: ObservableObject {
    

    private(set) var level: Int
    var isLocked: Bool
    var isTopCardSelected: Bool = false
    var isBottomCardSelected: Bool = false
    private var dataBase: [News] = []
    var topCards: Array<NewsCard> = []
    var bottomCards: Array<NewsTypeCard> = []
    var isFinished: Bool {
        return topCards.filter{ !$0.isMatched }.isEmpty
    }
    var topCardSelected: MatchGame.NewsCard?
    var bottomCardSelected: MatchGame.NewsTypeCard?
    
    
    func matchCards(_ newsCard: inout NewsCard, _ newsTypeCard: inout NewsTypeCard) {
        if (isTopCardSelected && isBottomCardSelected) {
            if newsCard.content.type == newsTypeCard.content {
                newsCard.isMatched = true
                newsTypeCard.isMatched = true
            } else {
                newsCard.isFacedUp = false
                newsTypeCard.isFacedUp = false
            }
        }
    }
    
    //Passing function createCardContent to init
    init(level: Int, dataBase: [News], isLocked: Bool) {
        self.isLocked = isLocked
        self.level = level
        self.dataBase = dataBase
        let dataSet = dataBase.shuffled()
        createCards(newsSet: dataSet)
    }
    
    func createCards(newsSet: [News]) {
        topCards = []
        bottomCards = []
        for news in newsSet[0...getTotalCards(level: level) - 1] {
            topCards.append(NewsCard(content: news))
            bottomCards.append(NewsTypeCard(content: news.type))
        }
        topCards.shuffle()
        bottomCards.shuffle()
    }
    
    struct NewsCard: Identifiable, Hashable{
        static func == (lhs: MatchGame.NewsCard, rhs: MatchGame.NewsCard) -> Bool {
            return lhs.id == rhs.id
        }
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        var isMatched: Bool = false
        var isFacedUp: Bool = false
        let content: News
        let id: UUID = UUID()
        
        func chooseNewsCard(card: inout NewsCard) {
            if !(isTopCardSelected && card.isMatched){
                card.isFacedUp = true
                isTopCardSelected = true
                topCardSelected = card
            }
        }
    }
    
    struct NewsTypeCard: Identifiable, Hashable {
        var isMatched: Bool = false
        var isFacedUp: Bool = false
        let content: NewsType
        let id: UUID = UUID()
        
        func chooseNewsTypeCard(card: inout NewsTypeCard) {
            if !(isBottomCardSelected && card.isMatched) {
                card.isFacedUp = true
                isBottomCardSelected = true
                bottomCardSelected = card
            }
        }
    }
    
    func getTotalCards(level: Int) -> Int {
        var result = 3 + (level % 2)
        result = result < dataBase.count ? result : dataBase.count
        return result
    }
    
}
