//
//  CustomShopItemView.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 19/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct CustomShopItemView: View {
    var titleName: String
    var imageName: URL
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            WebImage(url: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay(
                    VStack(alignment: .leading){
                        Spacer()
                        HStack{
                            Text(titleName)
                                .lineLimit(4)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .textCase(.uppercase)
                                .foregroundStyle(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(height: 70)
                                        .foregroundStyle(
                                            LinearGradient(colors: [.black, .clear], startPoint: .top, endPoint: .bottom)
                                        )
                                        .opacity(0.4))
                            Spacer()
                        }
                      
                    }
                    .padding()
                )
        }
    }
}

