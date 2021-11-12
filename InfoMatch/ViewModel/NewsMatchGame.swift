//
//  NewsMatchGame.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 22/10/21.
//

import SwiftUI

class NewsMatchGame: ObservableObject {
    
    static let news: Array<News> = NewsDataBase().dataBase
    static func createMatchGame() -> MatchGame<News> {
        MatchGame(numberOfPairOfCards: news.count, createCardContent: { pairIndex in
            return NewsMatchGame.news[pairIndex]
        })
    }
    
    @Published var model: MatchGame = createMatchGame()
    
    var topCards: Array<MatchGame<News>.Card> {
        return model.topCards
    }
    var bottomCards: Array<MatchGame<News>.Card> {
        return model.bottomCards
    }
    
    func getNewsTypeDescription(newsType: NewsType) -> String {
        switch newsType {
        case .Conspiracy:
            return "Tenta explicar de forma simples realidades complexas como resposta ao medo ou incerteza, muitas vezes rejeitando os especialistas e as autoridades"
        case .Opinion:
            return "Nem sempre a opinião está claramente identificada. Busque etiquetas como “vozes”, “coluna” ou“opinião”. Linguagem forte ou tendenciosa geralmente são pistas de que alguém quer “vender” as suas ideias."
        case .ClickBait:
            return "Conteúdo produzido com o objetivo de ganhar cliques na internet. Geralmente aparece sob a forma de títulos chamativos ou sensacionalistas, que despertam a curiosidade e aumenta o número de acessos a um determinado site."
        case .FakeContext:
            return "A imagem é verdadeira, mas está associada à um contexto diferente o que foi relacionado."
        case .Satire:
            return ""
        }
        
    }
    
}
