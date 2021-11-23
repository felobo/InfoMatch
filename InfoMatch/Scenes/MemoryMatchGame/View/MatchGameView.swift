//
//  MatchGameView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 18/11/21.
//

//
//  MatchGameView.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 17/11/21.
//
import SwiftUI

struct MatchGameView: View {
    
    @ObservedObject var model: MatchGame
    @State private var isShowingModal = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: GameGradient.newsMatchGame.getGradient(), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            if (model.totalLives > 0) {
                VStack {
                    Spacer()
                    HStack {
                        ForEach(0..<model.totalLives, id: \.self) {_ in
                            Image(systemName: "heart.fill").foregroundColor(.white)
                        }
                    }
                    Spacer()
                    TopCarouselView(isShowingModal: $isShowingModal, model: model)
                    BottomCarouselView(model: model)
                    Spacer()
                    MatchButtonsView(model: model)
                }
            }
            else {
                VStack {
                    Text("Não foi dessa vez!")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                    Text("Mas podemos voltar a explorar o universo da informação novamente, vamos lá?").font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(.white)
                        .padding()
                    Spacer()
                    Image("planetas")
                        .frame(width: 150, height: 150).padding()
                    Spacer()
                    Button {
                        model.restartGame()
                    } label: {
                        ZStack {
                            LinearGradient(gradient: GameGradient.onboardingButton.getGradient(), startPoint: .top, endPoint: .bottom)
                            Text("Jogar novamente")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width/1.2, height: 60).cornerRadius(15)
                    }
                    Spacer()
                }
            }
        }.navigationBarHidden(true)
        .sheet(isPresented: $isShowingModal) {
                ExpandedNewsCardView(model: model.getSelectedCard())
            }
    }
}

struct MatchGameView_Previews: PreviewProvider {
    static var previews: some View {
        MatchGameView(model: MatchGame(level: 1, dataBase: NewsDataBase().dataBase, isLocked: false))
    }
}
