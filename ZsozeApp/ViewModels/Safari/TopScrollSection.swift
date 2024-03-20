//
//  TopScrollSection.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum TopScrollSection: Int, Identifiable, CaseIterable {
    case instagram
    case zsozeatya
    case vod
    case shorts
    case art
    case unboxing
    
    var titleName: String{
        switch self {
        case .instagram:
            return "Instagram"
        case .zsozeatya:
            return "Zsozeatya"
        case .vod:
            return "Zsozeatya VOD"
        case .shorts:
            return "Zsozeatya Shorts"
        case .art:
            return "ZsozeArt"
        case .unboxing:
            return "ZSUNBOXING"
        }
    }
    
    var id: Int { return self.rawValue }
    
}
