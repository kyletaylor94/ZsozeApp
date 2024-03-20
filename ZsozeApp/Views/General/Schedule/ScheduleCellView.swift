//
//  SceduleCellView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 06/02/2024.
//

import SwiftUI

struct ScheduleCellView: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.background.ignoresSafeArea()
            
            VStack(alignment: .center){
                LottiView(animationFileName: "Animation - 1707756224431", loopMode: .loop)
                    .padding(.trailing)
                
                Text("Nem található esemény.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                Spacer()
            }
            .frame(width: 200, height: 200)
            .padding(.top, 50)
        }
    }
}

#Preview {
    ScheduleCellView().preferredColorScheme(.dark)
}
