//
//  Gradient.swift
//  InfoMatch
//
//  Created by Fernando Lobo on 12/11/21.
//

import Foundation
import SwiftUI

enum GameGradient {
    case onboardingBackground
    case onboardingButton
    case mainMenu
    case newsMatchGame
    case gamesCells
    case lockedGameCells
    
    func getGradient() -> Gradient {
        switch self {
        case .onboardingBackground:
            return Gradient(colors: [Color(.init(red: 8/255, green: 20/255, blue: 37/255, alpha: 1.0)), Color(.init(red: 36/255, green: 56/255, blue: 87/255, alpha: 1.0))])
        case .mainMenu:
            return Gradient(colors: [Color(.init(red: 8/255, green: 20/255, blue: 37/255, alpha: 1.0)), Color(.init(red: 36/255, green: 56/255, blue: 87/255, alpha: 1.0))])
        case .onboardingButton:
            return Gradient(colors: [Color(.init(red: 223/255, green: 83/255, blue: 40/255, alpha: 1.0)), Color(.init(red: 238/255, green: 135/255, blue: 93/255, alpha: 1.0))])
        case .gamesCells:
            return Gradient(colors: [Color(.init(red: 67/255, green: 151/255, blue: 145/255, alpha: 1.0)), Color(.init(red: 93/255, green: 201/255, blue: 192/255, alpha: 1.0))])
        case .newsMatchGame:
            return Gradient(colors: [Color(.init(red: 8/255, green: 20/255, blue: 37/255, alpha: 1.0)), Color(.init(red: 36/255, green: 56/255, blue: 87/255, alpha: 1.0))])
        case .lockedGameCells:
            return Gradient(colors: [Color(.init(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)), Color(.init(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0))])
        }
    }
}



                                    
                                    
                                    
