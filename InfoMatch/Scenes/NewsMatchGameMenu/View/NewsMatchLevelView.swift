//
//  NewsMatchLevelView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 14/11/21.
//

import SwiftUI

struct NewsMatchLevelView: View {
    
    @State var isLocked: Bool
    
    let level: Int
    var matches: Int {
        return level * 3
    }
    var body: some View {
        ZStack {
            if isLocked {
                LinearGradient(gradient: GameGradient.gamesCells.getGradient(), startPoint: .top, endPoint: .bottom)
            }
            else {
                Color(red: 240/255, green: 240/255, blue: 240/255)
            }
            
            VStack {
                HStack {
                    Text("Nível \(level)")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                    Spacer()
                }.padding(.leading)
                HStack {
                    Text("X Matches")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    Spacer()
                }.padding(.leading)
                HStack {
                    Spacer()
                    Image(systemName: "play.rectangle")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .padding(.trailing)
                }
                Spacer()
            }.padding(.top)
                .foregroundColor(.white)
        }.frame(width: UIScreen.main.bounds.width/1.15, height: UIScreen.main.bounds.height/6, alignment: .center)
            .cornerRadius(12)
    }
}

struct NewsMatchLevelView_Previews: PreviewProvider {
    static var previews: some View {
        NewsMatchLevelView(isLocked: true, level: 1)
    }
}
