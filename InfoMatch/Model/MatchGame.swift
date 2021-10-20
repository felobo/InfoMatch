//
//  MatchGame.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 20/10/21.
//

struct MatchGame<CardContent> {
    
    var news: Array<Card>
    var newsTypes: Array<Card>
    
    mutating func choose(card: Card) {
        
    }
    
    init(numberOfPairOfCards: Int, createCardContent: (Int) -> CardContent) {
        news = Array<Card>()
        newsTypes = Array<Card>()
        
        for pairIndex in 0..<numberOfPairOfCards {
            let newsContent: CardContent = createCardContent(pairIndex)
            let newsTypeContent: CardContent = createCardContent(pairIndex)
            news.append(Card(isMatched: false, isFacedUp: false, content: newsContent, id: pairIndex))
            newsTypes.append(Card(isMatched: false, isFacedUp: false, content: newsTypeContent, id: pairIndex))
        }
    }
    
    struct Card: Identifiable {
        var isMatched: Bool
        var isFacedUp: Bool
        let content: CardContent
        var id: Int
    }
}
