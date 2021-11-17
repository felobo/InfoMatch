//
//  TopCarousselView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 04/11/21.
//

import SwiftUI

struct TopCarouselView: View {
    
    @ObservedObject var viewModel: NewsMatchGame
    
    var body: some View {
        ZStack {
            
            Color(.black)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(NewsMatchGame.newsSet.indices, id: \.self) {
                        index in
                        let img = NewsMatchGame.newsSet[index].img
                        ZStack {
                            Image(img)
                                .resizable()
                                .frame(width: 300, height: 300)
                                .background(Color.white)
                                .cornerRadius(10)
                        }.padding()
                    }.ignoresSafeArea()
                }
            }
            
        }.ignoresSafeArea()
        
        
    }
}

struct TopCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        let game = NewsMatchGame()
        TopCarouselView(viewModel: game)
    }
}
