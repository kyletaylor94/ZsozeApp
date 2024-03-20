//
//  PlaySections.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum PlaySections: Int, CaseIterable, Identifiable{
    case zsoze
    case vod
    case shorts
    case art
    case unboxing
    
    var linkString: URL{
        switch self {
        case .zsoze:
            return URL(string: "https://www.youtube.com/@Zsozeatya/videos")!
        case .vod:
            return URL(string: "https://www.youtube.com/@ZsozeatyaVOD/videos/")!
        case .shorts:
            return URL(string: "https://www.youtube.com/@zsozeatyashorts5579/shorts")!
        case .art:
            return URL(string: "https://www.youtube.com/@ZsozeArt/videos")!
        case .unboxing:
            return URL(string: "https://www.youtube.com/@ZSUNBOXING-uw3rl/videos")!
            
        }
    }
    
    var imageName: String {
        switch self {
        case .zsoze:
            return "zsoze"
        case .vod:
            return "vod"
        case .shorts:
            return "zsoze"
        case .art:
            return "vod"
        case .unboxing:
            return "zsoze"
        }
    }
    
    var id: Int { return self.rawValue }
    
}
