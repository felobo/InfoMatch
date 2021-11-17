//
//  MatchGameMenu.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//

import Foundation

class InfoMatch {
    
    var matchGames: [MatchGame] = []
    static var newsDataBase: NewsDataBase = NewsDataBase()
    
    init() {
        //Increase i as we create more games
        //var i: Int = 0
        matchGames.append(MatchGame(level: 0, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: false))
        matchGames.append(MatchGame(level: 1, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        matchGames.append(MatchGame(level: 2, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        matchGames.append(MatchGame(level: 3, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        matchGames.append(MatchGame(level: 4, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        matchGames.append(MatchGame(level: 5, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        matchGames.append(MatchGame(level: 6, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        matchGames.append(MatchGame(level: 7, dataBase: InfoMatch.newsDataBase.dataBase, isLocked: true))
        print("Entrou: \(InfoMatch.newsDataBase.dataBase.count)")
    }
    
    //Create function to generate level with random news from data set and removing it from the original dataset
    
}
