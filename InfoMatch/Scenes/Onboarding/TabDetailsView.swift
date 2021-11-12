//
//  TabDetailsView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 11/11/21.
//

import SwiftUI

struct TabDetailsView: View {
    let index: Int
    var body: some View {
        VStack {
            Image(tabs[index].img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width/1.1)
                .padding()
            Text(tabs[index].title)
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .bold()
                .padding(.top)
            Text(tabs[index].description)
                .padding()
                .font(.system(size: 24, weight: .bold, design: .rounded))
                
                .padding()
            Spacer()
            
        }.foregroundColor(.white)
    }
}

struct TabDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            OnboardingGradientView()
            TabDetailsView(index: 0)
        }
        
    }
}
