//
//  PagesData.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 11/11/21.
//

let tabs = [Page(img: "planetas", title: "InfoUniverse", description: "Explorando o universo da informação"),
            Page(img: "astronauta", title: "Explore Jogando", description: "Selecione a sua dinâmica favorita e se divirta obtendo conhecimento sem perder oxigênio"),
            Page(img: "discovoador", title: "Faça a maior pontuação", description: "Ganhe pontos ao longo dos jogos"),
]

struct Page {
    let img: String
    let title: String
    let description: String
}
