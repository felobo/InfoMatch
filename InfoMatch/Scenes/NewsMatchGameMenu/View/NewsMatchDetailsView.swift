//
//  NewsMatchDetailsView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 14/11/21.
//

import SwiftUI

struct NewsMatchDetailsView: View {
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
                        ForEach((0..<10), id: \.self) { level in
                            NewsMatchLevelView(isLocked: true, level: level + 1)
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
