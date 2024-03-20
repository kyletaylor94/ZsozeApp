//
//  TabView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

enum tabSection: Int, Identifiable, CaseIterable {
    case safari
    case schedule
    case play
    case market
    case profile
    
    var imageName: String {
        switch self {
        case .safari:
            return "safari.fill"
        case .schedule:
            return "calendar"
        case .play:
            return "play.fill"
        case .market:
            return "bag.fill"
        case .profile:
            return "person.fill"
        }
    }
    
    var id: Int { return self.rawValue}
}

