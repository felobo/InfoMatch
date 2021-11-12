//
//  StartButtonView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 11/11/21.
//

import SwiftUI

struct StartButtonView: View {
    @Binding var selection: Int
    @Binding var isOnboardingViewShowing: Bool
    
    var body: some View {
        
        Button(action: {
            buttonAction()
        }, label: {
            ZStack {
                LinearGradient(gradient: GameGradient.onboardingButton.getGradient(), startPoint: .top, endPoint: .bottom)
                Text("Começar")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }.frame(width: 240, height: 50, alignment: .center)
                .cornerRadius(20).padding()
        })
    }
    func buttonAction() {
        withAnimation {
            dismiss()
        }
    }
    
    func dismiss() {
        withAnimation() {
            isOnboardingViewShowing.toggle()
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(selection: Binding.constant(0), isOnboardingViewShowing: Binding.constant(true))
    }
}
