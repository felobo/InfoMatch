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
    var dataBase: [News] = []
    var topCards: Array<NewsCard> = []
    var bottomCards: Array<NewsTypeCard> = []
    var isFinished: Bool {
        return topCards.filter{ $0.cardState != .matched}.isEmpty
    }
    var totalLives: Int = 3
        
    func chooseNewsCard(card: NewsCard) {
        
        guard card.cardState == .facedDown,
              topCards.filter({ $0.cardState == .selected }).isEmpty
        else { return }
        card.cardState = .selected
        print("Escolheu carta de cima")
    }
    
    func chooseNewsTypeCard(card: NewsTypeCard) {
        guard card.cardState == .facedDown,
              bottomCards.filter({ $0.cardState == .selected }).isEmpty
        else { return }
        card.cardState = .selected
        print("Escolheu carta de baixo")
    }
    
    func matchCards() {
        var topIndex = -1
        var bottomIndex = -1
        for i in 0..<topCards.count {
            if topCards[i].cardState == .selected {
                topIndex = i
            }
        }
        for j in 0..<bottomCards.count {
            if bottomCards[j].cardState == .selected {
                bottomIndex = j
            }
        }
        if (topIndex < 0 || bottomIndex < 0) {
            print("nao tem duas selecionadas")
            return
        }
        if topCards[topIndex].content.type == bottomCards[bottomIndex].content {
            topCards[topIndex].cardState = .matched
            bottomCards[bottomIndex].cardState = .matched
        }
        else {
            topCards[topIndex].cardState = .facedDown
            bottomCards[bottomIndex].cardState = .facedDown
        }
    }
    
    func didNotMatchCards() {
        var topIndex = -1
        var bottomIndex = -1
        for i in 0..<topCards.count {
            if topCards[i].cardState == .selected {
                topIndex = i
            }
        }
        for j in 0..<bottomCards.count {
            if bottomCards[j].cardState == .selected {
                bottomIndex = j
            }
        }
        if (topIndex < 0 || bottomIndex < 0) {
            print("nao tem duas selecionadas")
            return
        }
        if topCards[topIndex].content.type == bottomCards[bottomIndex].content {
            totalLives -= 1
        }
        topCards[topIndex].cardState = .facedDown
        bottomCards[bottomIndex].cardState = .facedDown
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
    
    class NewsCard: Identifiable, Hashable, ObservableObject {
        static func == (lhs: MatchGame.NewsCard, rhs: MatchGame.NewsCard) -> Bool {
            return lhs.id == rhs.id
        }
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        @Published var cardState: CardState = .facedDown
        let content: News
        let id: UUID = UUID()
        
        init(content: News) {
            self.content = content
        }
    }
    
    class NewsTypeCard: Identifiable, Hashable, ObservableObject {
        static func == (lhs: MatchGame.NewsTypeCard, rhs: MatchGame.NewsTypeCard) -> Bool {
            return lhs.id == rhs.id
        }
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        @Published var cardState: CardState = .facedDown
        let content: NewsType
        let id: UUID = UUID()
        
        init(content: NewsType) {
            self.content = content
        }
    }
    
    func getTotalCards(level: Int) -> Int {
        var result = 3 + (level % 2)
        result = result < dataBase.count ? result : dataBase.count
        return result
    }
    
    enum CardState {
        case facedDown
        case selected
        case matched
    }
    
}
