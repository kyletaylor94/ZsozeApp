//
//  ZsozeAppApp.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

@main
struct ZsozeAppApp: App {
    @State private var animationFinished = false
    @EnvironmentObject var channelSelection: ChannelSelection
    
    var body: some Scene {
        WindowGroup {
            if animationFinished {
                ContentView()
                    .environmentObject(ChannelSelection())
            } else {
                VStack{
                    LottiView(animationFileName: "Animation - 1710181750957", loopMode: .playOnce)
                        .frame(width: 30, height: 30)
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.8){
                        withAnimation {
                            animationFinished = true
                        }
                    }
                }
            }
        }
    }
}
