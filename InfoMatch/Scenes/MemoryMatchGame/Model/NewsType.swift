//
//  CardType.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 20/10/21.
//

enum NewsType: String {
    case Conspiracy = "Teoria da conspiração"
    case Opinion = "Opinião"
    case FakeContext = "Imagem fora de contexto"
    case ClickBait = "Clickbait"
    case Satire = "Sátira"
    
    func getNewsTypeDescription() -> String {
        switch self {
        case .Conspiracy:
            return "Tenta explicar de forma simples realidades complexas como resposta ao medo ou incerteza, muitas vezes rejeitando os especialistas e as autoridades"
        case .Opinion:
            return "Nem sempre a opinião está claramente identificada. Busque etiquetas como “vozes”, “coluna” ou“opinião”. Linguagem forte ou tendenciosa geralmente são pistas de que alguém quer “vender” as suas ideias."
        case .ClickBait:
            return "Conteúdo produzido com o objetivo de ganhar cliques na internet. Geralmente aparece sob a forma de títulos chamativos, que despertam a curiosidade e aumenta o número de acessos a um determinado site."
        case .FakeContext:
            return "A imagem é verdadeira, mas está associada à um contexto diferente o que foi relacionado."
        case .Satire:
            return ""
        }
    }
}
