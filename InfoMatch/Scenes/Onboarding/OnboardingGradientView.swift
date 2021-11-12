//
//  OnboardingView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 11/11/21.
//

import SwiftUI

struct OnboardingGradientView: View {
    
    var body: some View {
        LinearGradient(gradient: GameGradient.onboardingBackground.getGradient(), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}

struct OnboardingGradientView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingGradientView()
    }
}
