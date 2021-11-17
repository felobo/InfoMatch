//
//  NewsMatchDetailsView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 14/11/21.
//

import SwiftUI

struct NewsMatchDetailsView: View {
    
    private var model: InfoMatch = InfoMatch()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                NewsGameGradientView()
                
                VStack {
                    HStack() {
                        Text("InfoMatch")
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        Spacer()
                    }.padding(.leading)
                    
                    
                    Image("ob1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width / 2)
                    
                    Spacer(minLength: 60)
                    
                    ScrollView() {
                        
                        ForEach((0..<model.matchGames.count), id: \.self) {
                            level in
                            if !model.matchGames[level].isLocked {
                                NavigationLink(destination: MatchGameView(model: model.matchGames[level])) {
                                    NewsMatchLevelView(matchGame: model.matchGames[level])
                                }
                            }
                            else {
                                NewsMatchLevelView(matchGame: model.matchGames[level])
                            }
                            
                        }.padding()
                    }
                    .navigationBarHidden(true)
                    
                }
            }
        }
    }
    
    struct NewsMatchDetailsView_Previews: PreviewProvider {
        static var previews: some View {
            NewsMatchDetailsView()
        }
    }
}
