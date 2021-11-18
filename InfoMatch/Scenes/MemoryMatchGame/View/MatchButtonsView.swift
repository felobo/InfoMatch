//
//  MatchButton.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 16/11/21.
//
import SwiftUI

struct MatchButtonsView: View {
    
    @State private var checkTap = false
    @State private var xTap = false
    var model: MatchGame
    
    var body: some View {
        
        HStack {
            Spacer()
            Button {
                xTap.toggle()
                print("Did not Match")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    xTap.toggle()
                }
            } label: {
                Image(systemName: "xmark.square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(xTap ? .red : .gray))
            }
            Spacer()
            Button {
                checkTap.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    checkTap.toggle()
                }
                //Insert Match action
                print("Matched")
            } label: {
                Image(systemName: "checkmark.square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(checkTap ? .green : .gray))
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

