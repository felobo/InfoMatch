//
//  ContentView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 19/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var isOnboardingViewShowing: Bool = true
    
    var body: some View {
        VStack {
            NewsMatchDetailsView()
        }.fullScreenCover(isPresented: $isOnboardingViewShowing) {
            OnboardingView(isOnboardingViewShowing: $isOnboardingViewShowing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

