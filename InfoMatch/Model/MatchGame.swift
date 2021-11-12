//
//  MatchGame.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 20/10/21.
//

struct MatchGame<CardContent> {

    private(set) var topCards: Array<Card>
    private(set) var bottomCards: Array<Card>
    
    mutating func choose(card: Card) {
        
    }
    
    //Passing function createCardContent to init
    init(numberOfPairOfCards: Int, createCardContent: (Int) -> CardContent) {
        topCards = Array<Card>()
        bottomCards = Array<Card>()
        for index in 0..<numberOfPairOfCards {
            let topContent: CardContent = createCardContent(index)
            let bottomContent: CardContent = createCardContent(index)
            topCards.append(Card(content: topContent, id: index))
            bottomCards.append(Card(content: bottomContent, id: index))
        }
        topCards.shuffle()
        bottomCards.shuffle()
    }
    
    struct Card: Identifiable {
        var isMatched: Bool = false
        var isFacedUp: Bool = false
        let content: CardContent
        var id: Int
    }
}
