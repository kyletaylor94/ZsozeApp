//
//  ChannelSelection.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 17/03/2024.
//

import Foundation

class ChannelSelection: ObservableObject {
    @Published var selectedChannels: Set<TopScrollSection> = []
}
