//
//  CustomShopCell.swift
//  ZsozeApp
//
//  Created by Turdesan Csaba on 11/03/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct CustomShopCell: View {
    var shopsection: ShopSection
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            WebImage(url: shopsection.mainPictures)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading){
                Text(shopsection.titleName)
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .textCase(.uppercase)
            }
            .padding(.horizontal, 4)
            .padding(8)
            .background(
                Capsule()
                    .foregroundStyle(
                        LinearGradient(colors: [.black.opacity(0.4), .clear], startPoint: .top, endPoint: .bottom)
                    )
            )
            .cornerRadius(20)
        }
    }
}

#Preview {
    CustomShopCell(shopsection: .drink)
}
