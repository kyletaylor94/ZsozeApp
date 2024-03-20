//
//  SettingTitles.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum SettingTitles: Int, CaseIterable, Identifiable{
    case notificationsettings
    case aszf
    case privacy
    case prizedraw
    
    var imageName: String {
        switch self {
        case .notificationsettings:
            return "bell.fill"
        case .aszf:
            return "list.bullet.clipboard.fill"
        case .privacy:
            return "lock.fill"
        case .prizedraw:
            return "exclamationmark.shield"
        }
    }
    
    var titleName: String {
        switch self {
        case .notificationsettings:
            return "Értesítési beállítások"
        case .aszf:
            return "ÁSZF"
        case .privacy:
            return "Adatvédelem"
        case .prizedraw:
            return "Nyereményjáték szabályzat"
        }
    }
    
    
    var id: Int {return self.rawValue}
}
