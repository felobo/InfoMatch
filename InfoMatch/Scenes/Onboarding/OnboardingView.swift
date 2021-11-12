//
//  OnboardingView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 11/11/21.
//

import SwiftUI


struct OnboardingView: View {
    
    @State private var selection = 0
    @Binding var isOnboardingViewShowing: Bool
    
    var body: some View {
        ZStack {
            OnboardingGradientView()
            VStack {
                PageTabView(selection: $selection)
                StartButtonView(selection: $selection, isOnboardingViewShowing: $isOnboardingViewShowing)
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isOnboardingViewShowing: Binding.constant(true))
    }
}
