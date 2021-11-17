//
//  MatchButton.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 16/11/21.
//

import SwiftUI

struct MatchButtonsView: View {
    
    var model: MatchGame
    
    var body: some View {
        
        HStack {
            Spacer()
            Button {
                print("Did not Match")
            } label: {
                Image(systemName: "xmark.square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
            }
            Spacer()
            Button {
                //Insert Match action
                print("Matched")
            } label: {
                Image(systemName: "checkmark.square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
            }
            Spacer()
        }
    }
}

//struct MatchButtonsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MatchButtonsView(model: MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: false))
//    }
//}
