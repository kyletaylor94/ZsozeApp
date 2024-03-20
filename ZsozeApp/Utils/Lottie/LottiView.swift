//
//  LottiView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 12/02/2024.
//

import SwiftUI
import Lottie

struct LottiView: UIViewRepresentable {
    var animationFileName: String
    var loopMode: LottieLoopMode
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
    
    func makeUIView(context: Context) -> some UIView {
        let animationView = LottieAnimationView(name: animationFileName)
        animationView.loopMode = loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFill
        return animationView
    }
}

#Preview {
   // LottiView(animationFileName: "Animation - 1707756224431", loopMode: .loop)
    LottiView(animationFileName: "Animation - 1710181750957", loopMode: .playOnce)
        .frame(width: 30, height: 30)
}

