//
//  ScheduleTabSelection.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import Foundation

enum ScheduleTabSelection: Int, CaseIterable, Identifiable {
    case actual
    case schedule
    
    var titleName: String{
        switch self {
        case .actual:
            return "AKTUÁLIS"
        case .schedule:
            return "MENETREND"
        }
    }
    
    var id: Int {return self.rawValue}
}
