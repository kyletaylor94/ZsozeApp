//
//  ShopItems.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum Gift: Int, Identifiable, CaseIterable {
    case karacsonyibogre1
    case falinaptar
    case kulcstarto
    case karacsonyibogre2
    
    var titleName: String {
        switch self {
        case .karacsonyibogre1:
            return "Zsoze Karácsony Bögre - Zsoze -Szarvas- Atya"
        case .falinaptar:
            return "Zsoze 2024 Falinaptár"
        case .kulcstarto:
            return "Zsoze Manós Kulcstartó"
        case .karacsonyibogre2:
            return "Zsoze Karácsony Bögre - Süti és Manó"
        }
    }
    
    var giftPictures: URL {
        switch self {
        case .karacsonyibogre1:
            return URL(string: "https://shop.leet.hu/img/20446/8168512712330/500x500/8168512712330.webp?time=1702299632")!
        case .falinaptar:
            return URL(string: "https://shop.leet.hu/img/20446/8168512712343/500x500/8168512712343.webp?time=1702107242")!
        case .kulcstarto:
            return URL(string: "https://shop.leet.hu/img/20446/8168512712334/500x500/8168512712334.webp?time=1702299784")!
        case .karacsonyibogre2:
            return URL(string: "https://shop.leet.hu/img/20446/8168512712331/500x500/8168512712331.webp?time=1702299676")!
        }
    }
    
    var link: URL {
        switch self {
        case .karacsonyibogre1:
            return URL(string: "https://google.com")!
        case .falinaptar:
            return URL(string: "https://google.com")!
        case .kulcstarto:
            return URL(string: "https://google.com")!
        case .karacsonyibogre2:
            return URL(string: "https://google.com")!
        }
    }
    
    var id: Int {return self.rawValue}
}


enum Cloth: Int, Identifiable, CaseIterable {
    case sapka
    case dzseki
    case kotottpulover
    case szarvaspulover
    
    var titleName: String {
        switch self {
        case .sapka:
            return "Zsoze Karácsonyi Bojtos Sapka - Fekete"
        case .dzseki:
            return "Zsozeatya Nber Baseball Dzseki- Zöld, M"
        case .kotottpulover:
            return "Zsozeatya Karácsonyi Kötött pulóver - S"
        case .szarvaspulover:
            return "Zsoze -Szarvas- Atya - Pulóver - S"
        }
    }
    
    var giftPictures: URL {
        switch self {
        case .sapka:
            return URL(string: "https://shop.leet.hu/img/20446/8168512712224/500x500/8168512712224.webp?time=1702578033")!
        case .dzseki:
            return URL(string: "https://shop.leet.hu/img/20446/zsj_g_M/500x500/zsj_g_M.webp?time=1702390649")!
        case .kotottpulover:
            return URL(string: "https://shop.leet.hu/img/20446/8168512711121/500x500/8168512711121.webp?time=1701951721")!
        case .szarvaspulover:
            return URL(string: "https://shop.leet.hu/img/20446/8168512711111/500x500/8168512711111.webp?time=1701951544")!
        }
    }
    
    var link: URL {
        switch self {
        case .sapka:
            return URL(string: "https://google.com")!
        case .dzseki:
            return URL(string: "https://google.com")!
        case .kotottpulover:
            return URL(string: "https://google.com")!
        case .szarvaspulover:
            return URL(string: "https://google.com")!
        }
    }
    
    var id: Int {return self.rawValue}
}

enum SixPacks: Int, Identifiable, CaseIterable {
    case uccsi6pack
    case energysixpack
    case uccsiubi
    case zsangosixpack
    case zerosixpack
    case honbersixpack
    
    var titleName: String {
        switch self {
        case .uccsi6pack:
            return "Nber Üccsi 6Pack"
        case .energysixpack:
            return "Nber Energy 6Pack"
        case .uccsiubi:
            return "ZNber Üccsi Ubi 6Pack"
        case .zsangosixpack:
            return "Nber Zsangó 6Pack"
        case .zerosixpack:
            return "Nber Zero 6Pack"
        case .honbersixpack:
            return "Nber HóNber 6Pack"
        }
    }
    
    var giftPictures: URL {
        switch self {
        case .uccsi6pack:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .energysixpack:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .uccsiubi:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .zsangosixpack:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .zerosixpack:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        case .honbersixpack:
            return URL(string: "https://shop.leet.hu/img/20446/nber_uccsi_6pack/500x500/nber_uccsi_6pack.webp?time=1707138977")!
        }
    }
    
    var link: URL {
        switch self {
        case .uccsi6pack:
            return URL(string: "https://google.com")!
        case .energysixpack:
            return URL(string: "https://google.com")!
        case .uccsiubi:
            return URL(string: "https://google.com")!
        case .zsangosixpack:
            return URL(string: "https://google.com")!
        case .zerosixpack:
            return URL(string: "https://google.com")!
        case .honbersixpack:
            return URL(string: "https://google.com")!
        }
    }
    
    var id: Int {return self.rawValue}
}

enum energyDrink: Int, Identifiable, CaseIterable {
    case nberenergydrink
    case honber
    case zsango
    case zero
    case uccsi
    case ubi
    
    var titleName: String {
        switch self {
        case .nberenergydrink:
            return "Zsozéatya Nber Energy Drink // TÁLCA//"
        case .honber:
            return "(hó)Nber Energy Drink //TÁLCA// 24db"
        case .zsango:
            return "Zsangó Mangó Energy Drink //TÁLCA// 24db"
        case .zero:
            return "Nber ZERO Energy Drink //"
        case .uccsi:
            return "Nber Üccsi Üdítőital //TÁLCA//"
        case .ubi:
            return "Zsozéatya Nber ÜCCSi Ubi Üdítőital//TÁLCA// - 72 darabos (3 tálca)"
        }
    }
    
    var giftPictures: URL {
        switch self {
        case .nberenergydrink:
            return URL(string: "https://shop.leet.hu/img/20446/NBER_UCCSI_UJ_72/NBER_UCCSI_UJ_72.webp?time=1693052109")!
        case .honber:
            return URL(string: "https://shop.leet.hu/img/20446/HO_NBER_ENERGY_24/500x500/HO_NBER_ENERGY_24.webp?time=1708067709")!
        case .zsango:
            return URL(string: "https://shop.leet.hu/img/20446/ZSANGO_NBER_ENERGY_24/500x500/ZSANGO_NBER_ENERGY_24.webp?time=1708062887")!
        case .zero:
            return URL(string: "https://shop.leet.hu/img/20446/ZERO_NBER_ENERGY_24/500x500/ZERO_NBER_ENERGY_24.webp?time=1701710014")!
        case .uccsi:
            return URL(string: "https://shop.leet.hu/img/20446/NBER_UCCSI_24_altpic_2/500x500/NBER_UCCSI_24.webp?time=1708064762")!
        case .ubi:
            return URL(string: "https://shop.leet.hu/img/20446/NBER_UCCSI_UJ_72/500x500/NBER_UCCSI_UJ_72.webp?time=1693052109")!
        }
    }
    
    var link: URL {
        switch self {
        case .nberenergydrink:
            return URL(string: "https://google.com")!

        case .honber:
            return URL(string: "https://google.com")!

        case .zsango:
            return URL(string: "https://google.com")!

        case .zero:
            return URL(string: "https://google.com")!

        case .uccsi:
            return URL(string: "https://google.com")!

        case .ubi:
            return URL(string: "https://google.com")!

        }
    }
    var id: Int {return self.rawValue}
}
