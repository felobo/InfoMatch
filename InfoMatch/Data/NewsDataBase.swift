//
//  NewsDataBase.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 22/10/21.
//

import Foundation

struct NewsDataBase {
    
    var dataBase: Array<News> = []
    
    init() {
        dataBase.append(News(type: NewsType.Conspiracy, img: NewsImages.flatEarthTweet.rawValue, context: ["Trata-se de um perfil de rede social cujo principal conteúdo é sobre terraplanismo.", "Todos os livros de física usam conceitos que só fazem sentido para um modelo de Terra esférica, como por exemplo, a aceleração da gravidade.", "Durante o século XVII, Galileu Galilei foi condenado à prisão formal por defender o sistema heliocêntrico."]))
        dataBase.append(News(type: NewsType.Satire, img: NewsImages.messiMeme.rawValue, context: ["Bento é um dos maiores jogadores da história do futebol", "É um dos maiores ídolos do Barcelona, clube que joga da Argentina, seu país de origem", "Bento já conquistou mais de 30 títulos com a camisa do Barcelona, mas jamais conquistou sequer um título com a camisa da Argentina"]))
        
    }
    
}
