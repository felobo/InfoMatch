//
//  NewsGameGradientView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 14/11/21.
//

import SwiftUI

struct NewsGameGradientView: View {
    var body: some View {
        LinearGradient(gradient: GameGradient.onboardingBackground.getGradient(), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}

struct NewsGameGradientView_Previews: PreviewProvider {
    static var previews: some View {
        NewsGameGradientView()
    }
}
