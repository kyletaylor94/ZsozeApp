//
//  ShopSection.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum ShopSection: Int, CaseIterable, Identifiable{
    case drink
    case sixpack
    case clothes
    case gifts
    
    var titleName: String {
        switch self {
        case .drink:
            return "nber energy drink // üdítőital"
        case .sixpack:
            return "nber 6pack"
        case .clothes:
            return "ruházat"
        case .gifts:
            return "ajándéktárgyak"
        }
    }
    
    var mainPictures: URL {
        switch self {
        case .drink:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .sixpack:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .clothes:
            return URL(string: "https://shop.leet.hu/img/20446/8168512711111/500x500/8168512711111.webp?time=1701951544")!
        case .gifts:
            return URL(string: "https://shop.leet.hu/img/20446/8168512712334/500x500/8168512712334.webp?time=1702299784")!
        }
    }
    
    var id: Int {return self.rawValue}
}
