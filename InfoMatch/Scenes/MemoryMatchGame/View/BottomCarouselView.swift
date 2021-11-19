//
//  BottomCarouselView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//
import SwiftUI

struct BottomCarouselView: View {

    
    var model: MatchGame

    var body: some View {
        ZStack {

            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<model.bottomCards.count, id: \.self) {
                        index in
                        ZStack {
                            NewsTypeCardView(model: model.bottomCards[index]).onTapGesture {
                                model.chooseNewsTypeCard(card: &model.bottomCards[index])
                            }
                        }
                    }.ignoresSafeArea()
                }
            }
        }.ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
    }
}

//struct BottomCarouselView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomCarouselView(model : MatchGame())
//    }
//}
