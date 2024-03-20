//
//  ZsozeatyaResponse.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 12/03/2024.
//

import Foundation

struct ZsozeatyaResponse: Codable {
    let items: [Item]
}

struct Item: Codable {
    let snippet: Snippet
}

struct Snippet: Codable {
    let publishedAt: String
    let title: String
    let thumbnails: Thumbnails
    let channelTitle: String?
}

struct Thumbnails: Codable {
    let high: Thumbnail
}

struct Thumbnail: Codable {
    let url: String
}

