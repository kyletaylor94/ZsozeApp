//
//  CustomView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 08/02/2024.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(colors: [.background, .tab], startPoint: .top, endPoint: .bottom)
                )
                .stroke(
                    LinearGradient(colors: [.white, .blue], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: UIScreen.main.bounds.width - 52, height: 150)
            
            Text("Hello world")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    CustomView().preferredColorScheme(.dark)
}
