//
//  NotificationSettingsTitle.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum NotificationSettingsTitle: Int, CaseIterable, Identifiable {
    case schedule
    case social
    case zsoze
    case vod
    case shorts
    case art
    case unboxing
    
    var titleName: String {
        switch self {
        case .schedule:
            return "Események és stream kezdés"
        case .social:
            return "Social bejegyzések"
        case .zsoze:
            return "Zsozeatya"
        case .vod:
            return "Videó VOD"
        case .shorts:
            return "Zsozeatya Shorts"
        case .art:
            return "Zsoze Art"
        case .unboxing:
            return "ZSUNBOXING"
        }
    }
    
    var imageName: String {
        switch self {
        case .schedule:
            return "calendar"
        case .social:
            return "heart"
        case .zsoze:
            return "channelprofile"
        case .vod:
            return "vodprofile"
        case .shorts:
            return "shortsprofile"
        case .art:
            return "arts"
        case .unboxing:
            return "unboxing"
        }
    }
    
    var id: Int {return self.rawValue}

}
