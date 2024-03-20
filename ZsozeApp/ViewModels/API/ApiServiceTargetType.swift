//
//  ApiServiceTargetType.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation
import Moya

enum ApiServiceTargetType: TargetType{
    case zsoze(apiKey: String, channelId: String)
    case vod(apiKey: String, channelId: String)
    case shorts(apiKey: String, channelId: String)
    case arts(apiKey: String, channelId: String)
    case zsunboxing(apiKey: String, channelId: String)
    
    var baseURL: URL{
        return URL(string: "https://www.googleapis.com/youtube/v3")!
    }
    
    var path: String {
        return "/search"
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Moya.Task {
        switch self {
        case .zsoze(let apiKey, let channelId),
                .vod(let apiKey, let channelId),
                .shorts(let apiKey, let channelId),
                .arts(let apiKey, let channelId),
                .zsunboxing(let apiKey, let channelId):
            
            return .requestParameters(parameters: ["key" : apiKey, "channelId" : channelId, "part" : "snippet,id", "order": "date", "maxResults" : "1"], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
    
}
